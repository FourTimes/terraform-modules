variable "location" {
  description = "Azure location."
  type        = string
}

variable "environment" {
  description = "(Required) The environment platform in which resources will be deployed."
  default     = "stage"
}
variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "sku" {
  description = "A sku block. See documentation https://www.terraform.io/docs/providers/azurerm/r/app_service_plan.html#sku"
  type        = map(string)
}

variable "kind" {
  description = "The kind of the App Service Plan to create. See documentation https://www.terraform.io/docs/providers/azurerm/r/app_service_plan.html#kind"
  type        = string
}

variable "extra_tags" {
  description = "Extra tags to add"
  type        = map(string)
  default     = {}
}

variable "reserved" {
  description = "Flag indicating if App Service Plan should be reserved. Forced to true if \"kind\" is \"Linux\"."
  type        = string
  default     = "false"
}
