module "tlz_core_network_public_ip_primary" {
  source              = "../../FARMERS-TLZ-TFE-PMR/terraform-azurerm-app-service-web"
  location            = "eastus"
  environment         = "test"
  resource_group_name = "test-rg"
  app_service_plan_id = "/subscriptions/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee/resourceGroups/my-rg/providers/Microsoft.web/serverFarms/my-resource-name"
  app_settings = {
    foo = "bar"
  }
  extra_tags = {
    foo = "bar"
  }
  connection_strings = [{
    name  = "name-ci"
    type  = "Custom"
    value = "MyCustomConnectionString"
  }]
  custom_domains = {
    # "appservice2.com" = {
    #   certificate_file     = "./example.com.pfx"
    #   certificate_password = "examplepassword"
    # }
    # "appservice1.com" = {
    #   certificate_keyvault_secret_id = data.azurerm_key_vault_secret.my_keyvault.id
    #   certificate_password           = "example2password"
    # }
    "appservice.com" = null
  }

}
