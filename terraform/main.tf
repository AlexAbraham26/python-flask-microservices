# main.tf
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "main" {
  name     = "frontend-rg"
  location = "East US"
}

resource "azurerm_container_registry" "acr" {
  name                = "frontendACR"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  sku                 = "Basic"
  admin_enabled       = true
}

output "acr_admin_password" {
  value = azurerm_container_registry.acr.admin_password
  sensitive = true
}

output "acr_login_server" {
  value = azurerm_container_registry.acr.login_server
}
