resource "azurerm_resource_group" "this" {
  name     = var.rgname
  location = var.location
  tags = {
    "Application"       = var.application,
    "Application Owner" = var.owner,
    "Department"        = var.department,
    "Environment"       = var.env
    "Cost Center"       = var.costcenter
  }
}
