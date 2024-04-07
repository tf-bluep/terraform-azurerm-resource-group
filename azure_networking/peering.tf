provider "azurerm" {
  subscription_id = "f6941c4a-91a7-4b3e-90a6-7686644be380"
  features {}
  alias = "hub-network"
}


### Resource Group from Hub Network

data "azurerm_virtual_network" "hubnetwork" {
  provider            = azurerm.hub-network
  name                = "iga-az-pnq-hubvnet"
  resource_group_name = "iga-az-pnq-rg"
}
#### Peering
resource "azurerm_virtual_network_peering" "this-to-hub-network" {
  name                         = "Peering-vNET-${var.department}-${var.project}-${var.env}-MZ_IGA-AZ-PNQ-HUBVNET"
  resource_group_name          = azurerm_resource_group.this.name
  virtual_network_name         = azurerm_virtual_network.this.name
  remote_virtual_network_id    = "/subscriptions/f6941c4a-91a7-4b3e-90a6-7686644be380/resourceGroups/iga-az-pnq-rg/providers/Microsoft.Network/virtualNetworks/iga-az-pnq-hubvnet"
  allow_virtual_network_access = true
  allow_forwarded_traffic      = true
}

resource "azurerm_virtual_network_peering" "hub-to-this-network" {
  name                         = "Peering-IGA-AZ-PNQ-HUBVNET-vNET-${var.department}-${var.project}-${var.env}-MZ"
  resource_group_name          = data.azurerm_virtual_network.hubnetwork.resource_group_name
  virtual_network_name         = data.azurerm_virtual_network.hubnetwork.name
  remote_virtual_network_id    = azurerm_virtual_network.this.id
  allow_virtual_network_access = true
  allow_forwarded_traffic      = true
  provider                     = azurerm.hub-network

}
