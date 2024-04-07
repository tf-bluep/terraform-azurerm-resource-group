locals {
  topic_type = format("%s.%s", element(split("/", var.source_storage_account_id), 6), element(split("/", var.source_storage_account_id), 7))
}

resource "azurerm_eventgrid_system_topic" "eventgrid_system_topic" {
  name                = var.eventgrid_name
  resource_group_name = var.resource_group_name
  location            = var.location

  source_arm_resource_id = var.source_storage_account_id
  topic_type             = local.topic_type

  identity {
    type = "SystemAssigned"
  }

  tags = {
    "Application"       = var.application,
    "Application Owner" = var.owner,
    "Department"        = var.department,
    "Environment"       = var.env
    "Cost Center"       = var.costcenter
  }
}
