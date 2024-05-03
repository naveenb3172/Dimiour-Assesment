module "azure_services_dev" {
  source = "./modules/app_service_network"

  location               = "East US"
  vnet_address_space     = ["10.0.0.0/16"]
  subnet_address_prefix  = ["10.0.1.0/24"]
  app_service_sku        = "S1"
  app_service_tier       = "Standard"
  resource_group_name    = "dev_resource_group"
  virtual_network_name   = "dev_virtual_network"
  subnet_name            = "dev_subnet"
  app_service_plan_name  = "dev_app_service_plan"
  app_service_name       = "dev_app_service"
}
