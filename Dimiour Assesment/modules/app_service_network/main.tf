

resource "azurerm_resource_group" "my_rg" {
  name     = "dimiour-${var.resource_group_name}"
  location = var.location
}

resource "azurerm_virtual_network" "my_vnet" {
  name                = "dimiour-${var.virtual_network_name}"
  address_space       = var.vnet_address_space
  location            = azurerm_resource_group.my_rg.location
  resource_group_name = azurerm_resource_group.my_rg.name
}

resource "azurerm_subnet" "my_subnet" {
  name                 = "dimiour-${var.subnet_name}"
  resource_group_name  = azurerm_resource_group.my_rg.name
  virtual_network_name = azurerm_virtual_network.my_vnet.name
  address_prefixes     = var.subnet_address_prefix
}

resource "azurerm_app_service_plan" "my_app_service_plan" {
  name                = "dimiour-${var.app_service_plan_name}"
  location            = azurerm_resource_group.my_rg.location
  resource_group_name = azurerm_resource_group.my_rg.name
  sku {
    tier = var.app_service_tier
    size = var.app_service_sku
  }
}

resource "azurerm_app_service" "my_app_service" {
  name                = "dimiour-${var.app_service_name}"
  location            = azurerm_resource_group.my_rg.location
  resource_group_name = azurerm_resource_group.my_rg.name
  app_service_plan_id = azurerm_app_service_plan.my_app_service_plan.id
  site_config {
    always_on        = true
    vnet_route_all_enabled = true
  }
}

