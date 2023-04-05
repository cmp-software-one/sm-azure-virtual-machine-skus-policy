variable "subscription_id" {
  type = string
}

variable "allowed_skus" {
  type    = list(string)
  default = ["Standard_B2ms", "Standard_D2s_v3"]
}
