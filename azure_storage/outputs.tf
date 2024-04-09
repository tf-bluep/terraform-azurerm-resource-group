output "storage_account_id" {
  value = azurerm_storage_account.this.id
}

output "storage_name" {
  value = azurerm_storage_account.this.name
}

output "storage_endpoint" {
  value = azurerm_storage_account.this.primary_blob_endpoint
}

output "storage_host" {
  value = azurerm_storage_account.this.primary_blob_host
}

output "storage_account_adls_gen2_url" {
  value = azurerm_storage_account.this.primary_dfs_host
}


output "storage_account_key" {
  value = azurerm_storage_account.this.primary_access_key
}
