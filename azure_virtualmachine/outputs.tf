output "network_interface_id" {
  value = azurerm_network_interface.this.id
}
output "ipconfigname" {
  value = azurerm_network_interface.this.ip_configuration[0].name
}

output "sg_id" {
  value = azurerm_network_security_group.this.id
}

output "vm_id" {
  value = azurerm_windows_virtual_machine.this.id
}

#output "id_2016" {
 # value = data.azurerm_shared_image_version.image_2016.id
#}

#output "id_2019" {
 # value = data.azurerm_shared_image_version.image_2019.id
#}

#output "id_2022" {
 # value = data.azurerm_shared_image_version.image_2022.id
#}
