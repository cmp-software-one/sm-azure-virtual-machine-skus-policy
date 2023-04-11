variable "allowed_skus" {
  type    = list(string)
  default = ["Standard_B2ms", "Standard_D2s_v3"]
}

variable "subscription_id" {
 type   = string
 description  = "The value of the subscription for assigning the policy"
}
variable "tenant_id" {
    type = string
    description = "Azure Tenant ID"
}
variable "client_id" {
    type = string
    description = "Azure AD Application ID"
}
variable "client_secret" {
    type = string
    sensitive = true
    description = "Azure AD Application Secret"
}

variable "assign_name" {
 type  = string
 description = "Name of the Assignment"
 default = "Allowed SKUs"
}