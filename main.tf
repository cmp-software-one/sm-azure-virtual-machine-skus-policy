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

  # More information on the authentication methods supported by
  # the AzureRM Provider can be found here:
  # https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs

  tenant_id       = var.tenant_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  subscription_id = var.subscription_id
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

resource "azurerm_subscription_policy_assignment" "policy_assignment" {
  name                 = var.assign_name
  policy_definition_id = azurerm_policy_definition.vm_sku_policy.id
  display_name         = var.assign_name
  subscription_id      = "/subscriptions/${var.subscription_id}"
}