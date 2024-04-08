resource "azurerm_subnet" "this" {
  for_each             = var.subnets
  name                 = "snet-${var.department}-${var.project}-${var.env}-${each.key}"
  resource_group_name  = azurerm_resource_group.this.name
  virtual_network_name = azurerm_virtual_network.this.name
  address_prefixes     = [each.value]
  service_endpoints    = ["Microsoft.Storage", "Microsoft.Sql", "Microsoft.KeyVault", "Microsoft.ServiceBus", "Microsoft.EventHub", "Microsoft.AzureActiveDirectory"]

  depends_on = [azurerm_virtual_network.this]

  dynamic "validation" {
    for_each = azurerm_virtual_network.this.address_space
    content {
      valid = can(cidrsubnet(validation.value, 8, 0), each.value)
    }
  }

  lifecycle {
    ignore_changes = [
      address_prefixes,
    ]
  }
}

