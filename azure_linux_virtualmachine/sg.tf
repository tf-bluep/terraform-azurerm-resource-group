resource "azurerm_network_security_group" "this" {
  name                = format("%s-NSG", var.vmname)
  location            = var.location
  resource_group_name = var.rgname
  tags = {
    "Application"       = var.application,
    "Application Owner" = var.owner,
    "Department"        = var.department,
    "Environment"       = var.env
    "Cost Center"       = var.costcenter
  }
  security_rule {
    name                       = "CustRDP"
    priority                   = 310
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_ranges    = ["922", "22"]
    source_address_prefixes    = ["10.250.31.0/27", "10.141.32.20"]
    destination_address_prefix = "*"
  }
  security_rule {
    name                       = "CustTenable"
    priority                   = 400
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "10.145.10.4"
    destination_address_prefix = "*"
  }
  security_rule {
    name                       = "CyberArk"
    priority                   = 551
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_ranges    = ["3389", "135", "9211", "139", "445", "443", "22", "922", "8443", "221"]
    source_address_prefixes    = ["10.145.12.132", "10.145.12.137", "10.145.12.138", "10.145.12.140", "10.145.12.141", "10.152.2.5", "10.152.2.6", "10.152.2.7", "10.143.86.0/24", "10.142.144.0/24"]
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
    name                       = "AllowAzureLoadBalancerInBound"
    priority                   = 4093
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "AzureLoadBalancer"
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
    source_address_prefix      = var.vnetcidr
    destination_address_prefix = var.vnetcidr
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
# Connect the security group to the net[work interface
resource "azurerm_network_interface_security_group_association" "nsgass" {
  network_interface_id      = azurerm_network_interface.this.id
  network_security_group_id = azurerm_network_security_group.this.id
}
