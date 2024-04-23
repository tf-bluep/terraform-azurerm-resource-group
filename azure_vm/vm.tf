resource "azurerm_virtual_machine" "this" {
  name                  = var.vmname
  location              = var.location
  resource_group_name   = var.rgname
  vm_size               = var.vm_size

  storage_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-datacenter"
    version   = "latest"
  }

  os_profile {
    computer_name  = var.vmname
    admin_username = "azureuser"
    admin_password = "Password123!"
  }

  os_profile_windows_config {
    enable_automatic_upgrades = true
  }

  network_interface_ids = [azurerm_network_interface.this.id]

  storage_os_disk {
    name              = var.os_disk_name
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Premium_LRS"
  }
}