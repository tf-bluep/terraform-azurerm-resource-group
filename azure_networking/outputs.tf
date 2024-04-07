output "vnet_id" {
  description = "The ID of the virtual network"
  value       = azurerm_virtual_network.this.id
}

output "vnet_name" {
  description = "The Name of the Virtual Network"
  value       = azurerm_virtual_network.this.name
}

output "vnet_rgname" {
  description = "The Name of the Virtual Network"
  value       = azurerm_resource_group.this.name
}

output "vnet_cidr" {
  description = "The Name of the Virtual Network"
  value       = azurerm_virtual_network.this.address_space
}

output "subnet_ids" {
  description = "Map of subnet names to subnet IDs"
  value       = [for snet in azurerm_subnet.this : snet.id]
}

output "subnet_names" {
  description = "List of subnet names"
  value       = [for snet in azurerm_subnet.this : snet.name]
}

output "security_group_ids" {
  description = "List of Security Group IDs"
  value       = [for sg in azurerm_network_security_group.this : sg.id]
}
