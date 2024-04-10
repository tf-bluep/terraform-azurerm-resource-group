variable "action_group_name" {
  description = "Name of the storage account"
  type        = string
}

variable "rgname" {
  description = "Resource Group name"
  type        = string
}

variable "short_name" {
  description = "short name"
  type        = string
}

variable "email_address" {
  description = "email address"
  type        = string
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