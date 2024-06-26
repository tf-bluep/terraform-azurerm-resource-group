output "data_factory_id" {
  description = "Data factory id"
  value       = azurerm_data_factory.this.id
}

output "data_factory_name" {
  description = "Data factory name"
  value       = azurerm_data_factory.this.name
}

output "data_factory_managed_identity" {
  description = "Type of managed identity"
  value       = azurerm_data_factory.this.identity
}

output "data_factory_integration_runtime_id" {
  description = "Data factory integration runtime id"
  value       = local.integration_runtime_id
}

output "data_factory_integration_runtime_type" {
  description = "Data factory integration runtime type"
  value       = var.integration_runtime_type
}

output "data_factory_self_hosted_integration_runtime_primary_authorization_key" {
  description = "The self hosted integration runtime primary authentication key"
  value       = one(azurerm_data_factory_integration_runtime_self_hosted.this[*].primary_authorization_key)
  sensitive   = true
}

output "data_factory_self_hosted_integration_runtime_secondary_authorization_key" {
  description = "The self hosted integration runtime secondary authentication key"
  value       = one(azurerm_data_factory_integration_runtime_self_hosted.this[*].secondary_authorization_key)
  sensitive   = true
}
