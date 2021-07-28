data "azurerm_subscription" "current_subscription" {
}

data "azurerm_app_service_plan" "plan" {
  name                = local.app_service_plan_name
  resource_group_name = var.resource_group_name
}
