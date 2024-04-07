resource "azurerm_resource_group" "this" {
  name     = "RG-${var.department}-${var.project}-${var.env}-vNET"
  location = data.azurerm_location.current.display_name
  tags = {
    "Application"       = var.application,
    "Application Owner" = var.owner,
    "Department"        = var.department,
    "Environment"       = var.env
    "Cost Center"       = var.costcenter
  }
}

# Define the Azure virtual network
resource "azurerm_virtual_network" "this" {
  name                = var.vnet_name
  address_space       = var.vnet_address_space
  location            = data.azurerm_location.current.display_name
  resource_group_name = azurerm_resource_group.this.name
  tags = {
    "Application"       = var.application,
    "Application Owner" = var.owner,
    "Department"        = var.department,
    "Environment"       = var.env
    "Cost Center"       = var.costcenter
  }
}

resource "azurerm_virtual_network_dns_servers" "this" {
  virtual_network_id = azurerm_virtual_network.this.id
  dns_servers        = ["10.141.16.11", "10.141.16.12"]
}
