module "azure_services_qa" {
  source = "./modules/app_service_network"

   location               = "West US"
  vnet_address_space     = ["10.1.0.0/16"]
  subnet_address_prefix  = ["10.1.1.0/24"]
  app_service_sku        = "P1v2"
  app_service_tier       = "Premium"
  resource_group_name    = "qa_resource_group"
  virtual_network_name   = "qa_virtual_network"
  subnet_name            = "qa_subnet"
  app_service_plan_name  = "qa_app_service_plan"
  app_service_name       = "qa_app_service"
}
