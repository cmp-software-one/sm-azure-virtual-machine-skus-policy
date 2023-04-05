# Terraform Azure Virtual Machine SKUS Policy Module

This Terraform module creates an Azure Policy definition and policy set definition to restrict virtual machine creation to a specific set of SKUs.

## Usage

module "vm_sku_policy" {
  source = "github.com/your-organization/azure-policy-vm-sku"

  subscription_id = "your-subscription-id"
  allowed_skus    = ["Standard_B2ms", "Standard_D2s_v3"]
}


## Inputs

| Name              | Description                                       | Type   | Default                            | Required |
|-------------------|---------------------------------------------------|--------|------------------------------------|----------|
| allowed_skus      | The list of allowed SKUs for virtual machines.    | list   | n/a                                | yes      |
| subscriptions     | A subscription to apply the policy                | string | "Standard_B2ms", "Standard_D2s_v3" | yes      |


## Example

terraform plan -var 'subscription_id=["b1db2d61-6edf-4e6f-b42f-286904728d93"]'

Sign in using az login from Powershell is required to run the main.tf 

