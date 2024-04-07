output "rg_name" {
  value = length(azurerm_resource_group.this) > 0 ? azurerm_resource_group.this[0].name : data.azurerm_resource_group.existing.name
}
