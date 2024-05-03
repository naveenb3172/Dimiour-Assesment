variable "location" {
  description = "The Azure region to deploy resources."
}

variable "vnet_address_space" {
  description = "The address space for the virtual network."
  type        = list(string)
}

variable "subnet_address_prefix" {
  description = "The address prefix for the subnet."
  type        = list(string)
}

variable "app_service_sku" {
  description = "The SKU for the App Service Plan."
}

variable "app_service_tier" {
  description = "The tier for the App Service Plan."
}

variable "resource_group_name" {
  description = "The name of the resource group."
}

variable "virtual_network_name" {
  description = "The name of the virtual network."
}

variable "subnet_name" {
  description = "The name of the subnet."
}

variable "app_service_plan_name" {
  description = "The name of the App Service Plan."
}

variable "app_service_name" {
  description = "The name of the App Service."
}
