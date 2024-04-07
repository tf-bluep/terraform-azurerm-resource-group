data "azurerm_client_config" "current" {
}

variable "storage_account_name" {
  description = "Name of the storage account"
  type        = string
}

variable "location" {
  description = "Location of Storage Account"
  type        = string
}

variable "rgname" {
  description = "Resource Group name"
  type        = string
}

variable "account_tier" {
  description = "Defines the Tier to use for this storage account (Standard or Premium)."
  type        = string
}

variable "account_kind" {
  description = "Defines the Kind of account. Valid options are BlobStorage, BlockBlobStorage, FileStorage, Storage and StorageV2"
  type        = string
}

variable "account_replication_type" {
  description = "Storage account replication type - i.e. LRS, GRS, RAGRS, ZRS, GZRS, RAGZRS."
  type        = string
}

variable "enable_large_file_share" {
  description = "Enable Large File Share."
  type        = bool
  default     = false
}

variable "enable_hns" {
  description = "Enable Hierarchical Namespace (can be used with Azure Data Lake Storage Gen 2)."
  type        = bool
  default     = false
}

variable "enable_sftp" {
  description = "Enable SFTP for storage account (enable_hns must be set to true for this to work)."
  type        = bool
  default     = false
}

variable "enable_https_traffic_only" {
  description = "Forces HTTPS if enabled."
  type        = bool
  default     = true
}

variable "min_tls_version" {
  description = "The minimum supported TLS version for the storage account."
  type        = string
  default     = "TLS1_2"
}

variable "allow_nested_items_to_be_public" {
  description = "Allow or disallow public access to all blobs or containers in the storage account."
  type        = bool
  default     = false
}

variable "nfsv3_enabled" {
  description = "Is NFSv3 protocol enabled? Changing this forces a new resource to be created"
  type        = bool
  default     = false
}

variable "infrastructure_encryption_enabled" {
  description = "Is infrastructure encryption enabled? Changing this forces a new resource to be created."
  type        = bool
  default     = true
}

variable "shared_access_key_enabled" {
  description = "Indicates whether the storage account permits requests to be authorized with the account access key via Shared Key"
  type        = bool
  default     = true
}

variable "default_to_oauth_authentication" {
  description = "Set default authentication to storage account content"
  type        = bool
  default     = false
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

variable "public_network_access_enabled" {
  description = "Public Access"
  type        = bool
  default     = false
}
