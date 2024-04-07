locals {
  disksize = split(",", var.datadisksize)
}

variable "rgname" {
  type = string
}
variable "location" {
  type    = string
  default = "CentralIndia"
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
variable "env" {
  type = string
}
variable "costcenter" {
  type = string
}

variable "vNet" {
  type = string
}
variable "vnetrg" {
  type = string
}

variable "vnetcidr" {
  type = string
}

variable "subnetname" {
  type = string
}
variable "vmname" {
}

variable "size" {
  type = string
}
variable "publisher" {
  type = string
}
variable "offer" {
  type = string
}
variable "sku" {
  type = string
}
variable "zone" {
  type = string
}

variable "linux_password" {
  type      = string
  sensitive = true
}
variable "linux_username" {
  type      = string
  sensitive = true
}

variable "os_disk_size" {
  type = string
}
variable "os_disk_type" {
  type = string
}

variable "datadisksize" {

}
variable "datadisktype" {
  type = string
}

variable "private_ip_address_allocation" {
  description = "Allocation method for private IP address (Dynamic or Static)"
  type        = string
  default     = "Dynamic"
}

variable "private_ip_address" {
  description = "Static private IP address for the virtual machine (if allocation is Static)"
  type        = string
  default     = null
}
