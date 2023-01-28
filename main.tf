resource "azurerm_container_registry" "main" {
  resource_group_name = data.azurerm_resource_group.main.name
  location            = data.azurerm_resource_group.main.location

  name          = var.name
  admin_enabled = var.admin_enabled
  sku           = var.sku

  tags = var.tags
}