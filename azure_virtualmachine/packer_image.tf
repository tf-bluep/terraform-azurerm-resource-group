provider "azurerm" {
  alias           = "shared-image"
  subscription_id = "f2fb6ada-1520-4d1a-a23b-8ebbcf63a24c"
  tenant_id       = "23e4ff6d-7f45-4d40-8565-6135271fcd0c"
  features {}
}

data "azurerm_shared_image_version" "image_2016" {
  name                = "latest"
  image_name          = "Win2016"
  gallery_name        = "CIImagegallery"
  resource_group_name = "RG-ADMIN-OS-Repository"
  provider            = azurerm.shared-image
}

data "azurerm_shared_image_version" "image_2019" {
  name                = "latest"
  image_name          = "Win2019"
  gallery_name        = "CIImagegallery"
  resource_group_name = "RG-ADMIN-OS-Repository"
  provider            = azurerm.shared-image
}

data "azurerm_shared_image_version" "image_2022" {
  name                = "latest"
  image_name          = "Win2022"
  gallery_name        = "CIImagegallery"
  resource_group_name = "RG-ADMIN-OS-Repository"
  provider            = azurerm.shared-image
}
