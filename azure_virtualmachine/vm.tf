data "azurerm_location" "current" {
  location = var.location
}

resource "azurerm_windows_virtual_machine" "this" {
  name                = var.vmname
  resource_group_name = var.rgname
  location            = var.location
  size                = var.size
  admin_username      = var.os_username
  admin_password      = var.os_password
  license_type        = "Windows_Server"
  timezone            = var.timezone
  zone                = var.zone
  tags = {
    "Application"       = var.application,
    "Application Owner" = var.owner,
    "Department"        = var.department,
    "Environment"       = var.env
    "Cost Center"       = var.costcenter
  }
  network_interface_ids = [
    azurerm_network_interface.this.id
  ]
  os_disk {
    name                 = format("OSDisk-%s", var.vmname)
    caching              = "ReadWrite"
    storage_account_type = var.os_disk_type
    disk_size_gb         = var.os_disk_size
  }
  source_image_id = var.OS == "2016" ? data.azurerm_shared_image_version.image_2016.id : var.OS == "2019" ? data.azurerm_shared_image_version.image_2019.id : var.OS == "2022" ? data.azurerm_shared_image_version.image_2022.id : var.OS
  boot_diagnostics {
    storage_account_uri = ""
  }
  lifecycle {
    ignore_changes = [source_image_id]
  }
}


#### Virtual Machine Extensions for custom script to be run post provisioning
resource "azurerm_virtual_machine_extension" "this" {
  count                = var.domain == "Yes" ? 1 : 0
  name                 = "Domainjoin"
  virtual_machine_id   = azurerm_windows_virtual_machine.this.id
  publisher            = "Microsoft.Compute"
  type                 = "JsonADDomainExtension"
  type_handler_version = "1.3"
  settings = jsonencode({
    Name    = "Indigo.in",
    OUPath  = var.env == "prod" ? "OU=Production AZURE Servers,OU=Production,OU=Servers,DC=INDIGO,DC=IN" : "OU=Staging AZURE Servers,OU=Staging,OU=Servers,DC=INDIGO,DC=IN",
    User    = "Indigo\\Ansibleuser",
    Restart = "true",
    Options = "3"
  })

  protected_settings = jsonencode({
    Password = var.domainpass
  })
  depends_on = [azurerm_windows_virtual_machine.this]
}
