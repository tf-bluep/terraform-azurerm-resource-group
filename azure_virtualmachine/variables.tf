### Local Variables

# locals {
#   disksize = split(",", var.datadisksize)
# }

locals {
  disksize = [for size in split(", ", var.datadisksize) : tonumber(size)]
}

### Variables

variable "vmname" {}

variable "vNet" {
  type = string
}

variable "vnetrg" {
  type = string
}

variable "rgname" {
  type = string
}

variable "location" {
  type    = string
  default = "CentralIndia"
}

variable "vnetcidr" {
  type = string
}

variable "subnetname" {
  type = string
}

variable "size" {
  type = string
}

#variable "OS" {
 # type = string
#}

variable "domain" {
  type    = string
  default = "Yes"
}

variable "os_disk_size" {
  type = string
}

variable "os_disk_type" {
  type = string
}

variable "datadisksize" {}

variable "datadisktype" {
  type = string
}

variable "os_username" {
  type    = string
  default = "6e_Commander"
}

variable "os_password" {
  type      = string
  sensitive = true
}

variable "domainpass" {
  type      = string
  sensitive = true
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

variable "zone" {
  type    = string
  default = null
}

variable "timezone" {
  type    = string
  default = "India Standard Time"
}
