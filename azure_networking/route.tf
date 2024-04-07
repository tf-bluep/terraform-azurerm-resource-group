resource "azurerm_route_table" "this" {
  name                = "UDR-${var.department}-${var.project}-${var.env}-MZ-2-HUB-vNET"
  location            = data.azurerm_location.current.display_name
  resource_group_name = azurerm_resource_group.this.name

  route {
    name                   = "RT-${var.department}-${var.project}-${var.env}-MZ-2-FIREWALL"
    address_prefix         = "0.0.0.0/0"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "172.24.16.36"
  }
}

resource "azurerm_subnet_route_table_association" "this" {
  for_each       = azurerm_subnet.this
  subnet_id      = each.value.id
  route_table_id = azurerm_route_table.this.id
}
