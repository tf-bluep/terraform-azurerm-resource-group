data "azurerm_subnet" "this" {
  name                 = var.subnetname
  virtual_network_name = var.vNet
  resource_group_name  = var.vnetrg
}

resource "azurerm_network_interface" "this" {
  name                = "NIC-${var.vmname}"
  location            = var.location
  resource_group_name = var.rgname
  tags = {
    "Application"       = var.application,
    "Application Owner" = var.owner,
    "Department"        = var.department,
    "Environment"       = var.env
    "Cost Center"       = var.costcenter
  }
  ip_configuration {
    name                          = format("ipconfig-%s", var.vmname)
    subnet_id                     = data.azurerm_subnet.this.id
    private_ip_address_allocation = var.private_ip_address_allocation
    private_ip_address            = var.private_ip_address_allocation == "Dynamic" ? null : var.private_ip_address
  }
}


resource "azurerm_network_interface_security_group_association" "this" {
  network_interface_id      = azurerm_network_interface.this.id
  network_security_group_id = azurerm_network_security_group.this.id
}
