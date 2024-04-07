output "main_storage_container_ids" {
  value = { for idx, container in azurerm_storage_container.this : container.name => container.id }
}
