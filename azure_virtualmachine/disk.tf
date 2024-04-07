resource "azurerm_managed_disk" "this" {
  count                = local.disksize[0] != "0" ? length(local.disksize) : 0
  name                 = format("MD-%02d-%s", count.index + 1, var.vmname)
  location             = var.location
  resource_group_name  = var.rgname
  storage_account_type = var.datadisktype
  create_option        = "Empty"
  # disk_size_gb         = local.disksize[count.index]
  disk_size_gb = tolist([for size in local.disksize : tonumber(size)])[count.index]
  zone         = var.zone

  tags = {
    "Application"       = var.application,
    "Application Owner" = var.owner,
    "Department"        = var.department,
    "Environment"       = var.env
    "Cost Center"       = var.costcenter
  }
}

resource "azurerm_virtual_machine_data_disk_attachment" "this" {
  count              = local.disksize[0] != "0" ? length(local.disksize) : 0
  managed_disk_id    = azurerm_managed_disk.this[count.index].id
  virtual_machine_id = azurerm_windows_virtual_machine.this.id
  lun                = count.index
  caching            = "ReadWrite"
}
