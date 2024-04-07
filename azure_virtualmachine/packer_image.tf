provider "azurerm" {
  alias           = "shared-image"
  subscription_id = "5611c1d2-d56c-491e-8ba7-9f804d0e3c76"
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
