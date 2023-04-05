terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.50.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_policy_definition" "vm_sku_policy" {
  name         = "vm-sku-policy"
  display_name = "Virtual machine SKU policy"
  mode         = "Indexed"
  policy_type  = "Custom"
  metadata = <<METADATA
  {
    "category": "Compute"
  }
  METADATA

  policy_rule = <<POLICY_RULE
  {
    "if": {
      "allOf": [
        {
          "field": "type",
          "equals": "Microsoft.Compute/virtualMachines"
        },
        {
          "not": {
            "field": "Microsoft.Compute/virtualMachines/sku.name",
            "in": ${jsonencode(var.allowed_skus)}
          }
        }
      ]
    },
    "then": {
      "effect": "deny"
    }
  }
  POLICY_RULE
}
