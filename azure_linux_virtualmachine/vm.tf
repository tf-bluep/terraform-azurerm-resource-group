data "azurerm_location" "current" {
  location = var.location
}

data "azurerm_resource_group" "existing" {
  name = var.rgname
}


resource "azurerm_resource_group" "this" {
  count    = data.azurerm_resource_group.existing.id != null ? 0 : 1
  name     = var.rgname
  location = var.location
  tags = {
    "Application"       = var.application,
    "Application Owner" = var.owner,
    "Department"        = var.department,
    "Environment"       = var.env,
    "Cost Center"       = var.costcenter
  }

}


resource "azurerm_linux_virtual_machine" "linuxvm" {
  name                            = var.vmname
  resource_group_name             = data.azurerm_resource_group.existing.id != null ? data.azurerm_resource_group.existing.name : azurerm_resource_group.this[0].name
  location                        = var.location
  size                            = var.size
  admin_username                  = var.linux_username
  admin_password                  = var.linux_password
  disable_password_authentication = "false"
  zone                            = var.zone
  tags = {
    "Application"       = var.application,
    "Application Owner" = var.owner,
    "Department"        = var.department,
    "Environment"       = var.env
    "Cost Center"       = var.costcenter
  }
  network_interface_ids = [
    azurerm_network_interface.this.id
  ]
  os_disk {
    name                 = format("OSDisk-%s", var.vmname)
    caching              = "ReadWrite"
    storage_account_type = var.os_disk_type
    disk_size_gb         = var.os_disk_size
  }
  source_image_reference {
    publisher = var.publisher
    offer     = var.offer
    sku       = var.sku
    version   = "latest"
  }
}
