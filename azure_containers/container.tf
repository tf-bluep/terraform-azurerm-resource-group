resource "azurerm_storage_container" "this" {
  count                 = length(var.container_names)
  name                  = var.container_names[count.index]
  storage_account_name  = var.storage_account_name
  container_access_type = var.access_type
}
