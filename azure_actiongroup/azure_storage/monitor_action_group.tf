resource "azurerm_monitor_action_group" "this" {
  name                = var.action_group_name
  resource_group_name = var.rgname
  short_name          = var.short_name
  email_receiver {
    name          = "email"
    email_address = var.email_address
  }
}
  tags = {
    "Application"       = var.application,
    "Application Owner" = var.owner,
    "Department"        = var.department,
    "Environment"       = var.env
    "Cost Center"       = var.costcenter
  }
}
