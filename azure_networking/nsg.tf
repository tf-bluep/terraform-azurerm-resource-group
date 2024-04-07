resource "azurerm_network_security_group" "this" {
  for_each            = azurerm_subnet.this
  name                = "${each.value.name}-NSG"
  location            = data.azurerm_location.current.display_name
  resource_group_name = azurerm_resource_group.this.name
  tags = {
    "Application"       = var.application,
    "Application Owner" = var.owner,
    "Department"        = var.department,
    "Environment"       = var.env
    "Cost Center"       = var.costcenter
  }
  security_rule {
    name                       = "CyberArk-Cloud"
    priority                   = 551
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_ranges    = ["3389", "135", "9211", "139", "445", "443", "22", "922", "8443", "221"]
    source_address_prefixes    = ["10.145.12.132", "10.145.12.137", "10.145.12.138", "10.145.12.140", "10.145.12.141", "10.152.2.5", "10.152.2.6", "10.152.2.7", "10.143.86.0/24", "10.142.144.0/24", "10.141.32.20"]
    destination_address_prefix = "*"
  }
  security_rule {
    name                       = "Indigo-Office"
    priority                   = 443
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "443"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  security_rule {
    name                       = "CustTenable"
    priority                   = 340
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "10.145.10.0/23"
    destination_address_prefix = "*"
  }
  security_rule {
    name                       = "ServiceNowInBound"
    priority                   = 990
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_ranges    = ["22", "135", "5985", "5986"]
    source_address_prefixes    = ["10.141.32.6", "10.141.32.7", "10.145.12.68"]
    destination_address_prefix = "*"
  }
  security_rule {
    name                       = "AllowCidrBlock"
    priority                   = 4094
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = var.vnet_address_space[0]
    destination_address_prefix = var.vnet_address_space[0]
  }
  security_rule {
    name                       = "DenyAnyCustomAnyInbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_subnet_network_security_group_association" "this" {
  for_each = azurerm_network_security_group.this

  subnet_id                 = azurerm_subnet.this[each.key].id
  network_security_group_id = azurerm_network_security_group.this[each.key].id
}
