variable "container_names" {
  description = "List of Azure Storage Container names"
  type        = list(string)
}

variable "access_type" {
  description = "Container Access type"
  type        = string
  default     = "private"
}

variable "storage_account_name" {
  description = "Storage Account Name"
  type        = string
}
