data "azurerm_location" "current" {
  location = "CentralIndia"
}

variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
}

variable "vnet_address_space" {
  description = "Address space of the virtual network"
  type        = list(string)
}

variable "subnets" {
  description = "Map of subnet names to address prefixes"
  type        = map(string)
}

variable "env" {
  type = string
}

variable "project" {
  type = string
}

variable "application" {
  type = string
}

variable "owner" {
  type = string
}

variable "department" {
  type = string
}

variable "costcenter" {
  type = string
}
