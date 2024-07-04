# outputs.tf
output "acr_admin_password" {
  value = azurerm_container_registry.acr.admin_password
  sensitive = true
}

output "acr_login_server" {
  value = azurerm_container_registry.acr.login_server
}
