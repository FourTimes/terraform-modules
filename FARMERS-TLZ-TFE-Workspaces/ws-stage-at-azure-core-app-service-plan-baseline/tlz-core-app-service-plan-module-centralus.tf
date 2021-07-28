module "tlz_core_network_public_ip_primary" {
  source              = "../../FARMERS-TLZ-TFE-PMR/terraform-azurerm-app-service-plan"
  location            = "eastus"
  environment         = "test"
  resource_group_name = "rg-test"
  sku = {
    tier = "Basic"
    size = "B2"
  }
  kind = "Linux"
  extra_tags = {
    foo = "bar"
  }
}
