output "login_server" {
  value = azurerm_container_registry.main.login_server
  description = "The URL that can be used to log into the container registry."
}

output "id" {
  value = azurerm_container_registry.main.id
  description = "The ID of the Container Registry."
}

output "name" {
  value = azurerm_container_registry.main.name
  description = " Specifies the name of the Container Registry. Changing this forces a new resource to be created."
}
