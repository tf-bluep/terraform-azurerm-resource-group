## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_advanced_threat_protection.threat_protection](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/advanced_threat_protection) | resource |
| [azurerm_storage_account.storage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [azurerm_storage_account_network_rules.network_rules](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account_network_rules) | resource |
| [azurerm_storage_container.container](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_container) | resource |
| [azurerm_storage_queue.queue](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_queue) | resource |
| [azurerm_storage_share.share](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_share) | resource |
| [azurerm_storage_table.table](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_table) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_tier"></a> [access\_tier](#input\_access\_tier) | Defines the access tier for `BlobStorage`, `FileStorage` and `StorageV2` accounts. Valid options are `Hot` and `Cool`, defaults to `Hot`. | `string` | `"Hot"` | no |
| <a name="input_account_kind"></a> [account\_kind](#input\_account\_kind) | Defines the Kind of account. Valid options are `BlobStorage`, `BlockBlobStorage`, `FileStorage`, `Storage` and `StorageV2`. Changing this forces a new resource to be created. Defaults to StorageV2. | `string` | `"StorageV2"` | no |
| <a name="input_account_replication_type"></a> [account\_replication\_type](#input\_account\_replication\_type) | Defines the type of replication to use for this Storage Account. Valid options are `LRS`, `GRS`, `RAGRS`, `ZRS`, `GZRS` and `RAGZRS`. | `string` | `"ZRS"` | no |
| <a name="input_account_tier"></a> [account\_tier](#input\_account\_tier) | Defines the Tier to use for this Storage Account. Valid options are `Standard` and `Premium`. For `BlockBlobStorage` and `FileStorage` accounts only `Premium` is valid. Changing this forces a new resource to be created. | `string` | `"Standard"` | no |
| <a name="input_advanced_threat_protection_enabled"></a> [advanced\_threat\_protection\_enabled](#input\_advanced\_threat\_protection\_enabled) | Boolean flag which controls if advanced threat protection is enabled, see [documentation](https://docs.microsoft.com/en-us/azure/storage/common/storage-advanced-threat-protection?tabs=azure-portal) for more information. | `bool` | `false` | no |
| <a name="input_allowed_cidrs"></a> [allowed\_cidrs](#input\_allowed\_cidrs) | List of CIDR to allow access to that Storage Account. | `list(string)` | `[]` | no |
| <a name="input_application"></a> [application](#input\_application) | n/a | `string` | n/a | yes |
| <a name="input_containers"></a> [containers](#input\_containers) | List of objects to create some Blob containers in this Storage Account. | <pre>list(object({<br>    name                  = string<br>    container_access_type = optional(string, "private")<br>    metadata              = optional(map(string))<br>  }))</pre> | `[]` | no |
| <a name="input_costcenter"></a> [costcenter](#input\_costcenter) | n/a | `string` | n/a | yes |
| <a name="input_cross_tenant_replication_enabled"></a> [cross\_tenant\_replication\_enabled](#input\_cross\_tenant\_replication\_enabled) | Enable cross tenant replication. | `bool` | `false` | no |
| <a name="input_custom_domain_name"></a> [custom\_domain\_name](#input\_custom\_domain\_name) | The Custom Domain Name to use for the Storage Account, which will be validated by Azure. | `string` | `null` | no |
| <a name="input_default_firewall_action"></a> [default\_firewall\_action](#input\_default\_firewall\_action) | Which default firewalling policy to apply. Valid values are `Allow` or `Deny`. | `string` | `"Deny"` | no |
| <a name="input_default_tags_enabled"></a> [default\_tags\_enabled](#input\_default\_tags\_enabled) | Option to enable or disable default tags. | `bool` | `true` | no |
| <a name="input_department"></a> [department](#input\_department) | n/a | `string` | n/a | yes |
| <a name="input_env"></a> [env](#input\_env) | n/a | `string` | n/a | yes |
| <a name="input_extra_tags"></a> [extra\_tags](#input\_extra\_tags) | Additional tags to associate with your Azure Storage Account. | `map(string)` | `{}` | no |
| <a name="input_file_share_authentication"></a> [file\_share\_authentication](#input\_file\_share\_authentication) | Storage Account file shares authentication configuration. | <pre>object({<br>    directory_type = string<br>    active_directory = optional(object({<br>      storage_sid         = string<br>      domain_name         = string<br>      domain_sid          = string<br>      domain_guid         = string<br>      forest_name         = string<br>      netbios_domain_name = string<br>    }))<br>  })</pre> | `null` | no |
| <a name="input_file_share_cors_rules"></a> [file\_share\_cors\_rules](#input\_file\_share\_cors\_rules) | Storage Account file shares CORS rule. Please refer to the [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account#cors_rule) for more information. | <pre>object({<br>    allowed_headers    = list(string)<br>    allowed_methods    = list(string)<br>    allowed_origins    = list(string)<br>    exposed_headers    = list(string)<br>    max_age_in_seconds = number<br>  })</pre> | `null` | no |
| <a name="input_file_share_properties_smb"></a> [file\_share\_properties\_smb](#input\_file\_share\_properties\_smb) | Storage Account file shares smb properties. | <pre>object({<br>    versions                        = optional(list(string), null)<br>    authentication_types            = optional(list(string), null)<br>    kerberos_ticket_encryption_type = optional(list(string), null)<br>    channel_encryption_type         = optional(list(string), null)<br>    multichannel_enabled            = optional(bool, null)<br>  })</pre> | `null` | no |
| <a name="input_file_share_retention_policy_in_days"></a> [file\_share\_retention\_policy\_in\_days](#input\_file\_share\_retention\_policy\_in\_days) | Storage Account file shares retention policy in days. Enabling this may require additional directory permissions. | `number` | `null` | no |
| <a name="input_file_shares"></a> [file\_shares](#input\_file\_shares) | List of objects to create some File Shares in this Storage Account. | <pre>list(object({<br>    name             = string<br>    quota_in_gb      = number<br>    enabled_protocol = optional(string)<br>    metadata         = optional(map(string))<br>    acl = optional(list(object({<br>      id          = string<br>      permissions = string<br>      start       = optional(string)<br>      expiry      = optional(string)<br>    })))<br>  }))</pre> | `[]` | no |
| <a name="input_hns_enabled"></a> [hns\_enabled](#input\_hns\_enabled) | Is Hierarchical Namespace enabled? This can be used with Azure Data Lake Storage Gen 2 and must be `true` if `nfsv3_enabled` or `sftp_enabled` is set to `true`. Changing this forces a new resource to be created. | `bool` | `false` | no |
| <a name="input_https_traffic_only_enabled"></a> [https\_traffic\_only\_enabled](#input\_https\_traffic\_only\_enabled) | Boolean flag which forces HTTPS if enabled. | `bool` | `true` | no |
| <a name="input_identity_ids"></a> [identity\_ids](#input\_identity\_ids) | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Storage Account. | `list(string)` | `null` | no |
| <a name="input_identity_type"></a> [identity\_type](#input\_identity\_type) | Specifies the type of Managed Service Identity that should be configured on this Storage Account. Possible values are `SystemAssigned`, `UserAssigned`, `SystemAssigned, UserAssigned` (to enable both). | `string` | `"SystemAssigned"` | no |
| <a name="input_location"></a> [location](#input\_location) | Location of Storage Account | `string` | n/a | yes |
| <a name="input_min_tls_version"></a> [min\_tls\_version](#input\_min\_tls\_version) | The minimum supported TLS version for the Storage Account. Possible values are `TLS1_0`, `TLS1_1`, and `TLS1_2`. | `string` | `"TLS1_2"` | no |
| <a name="input_network_bypass"></a> [network\_bypass](#input\_network\_bypass) | Specifies whether traffic is bypassed for 'Logging', 'Metrics', 'AzureServices' or 'None'. | `list(string)` | <pre>[<br>  "Logging",<br>  "Metrics",<br>  "AzureServices"<br>]</pre> | no |
| <a name="input_network_rules_enabled"></a> [network\_rules\_enabled](#input\_network\_rules\_enabled) | Boolean to enable Network Rules on the Storage Account, requires `network_bypass`, `allowed_cidrs`, `subnet_ids` or `default_firewall_action` correctly set if enabled. | `bool` | `true` | no |
| <a name="input_nfsv3_enabled"></a> [nfsv3\_enabled](#input\_nfsv3\_enabled) | Is NFSv3 protocol enabled? Changing this forces a new resource to be created. | `bool` | `false` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | n/a | `string` | n/a | yes |
| <a name="input_private_link_access"></a> [private\_link\_access](#input\_private\_link\_access) | List of Privatelink objects to allow access from. | <pre>list(object({<br>    endpoint_resource_id = string<br>    endpoint_tenant_id   = optional(string, null)<br>  }))</pre> | `[]` | no |
| <a name="input_public_nested_items_allowed"></a> [public\_nested\_items\_allowed](#input\_public\_nested\_items\_allowed) | Allow or disallow nested items within this Account to opt into being public. | `bool` | `false` | no |
| <a name="input_public_network_access_enabled"></a> [public\_network\_access\_enabled](#input\_public\_network\_access\_enabled) | Public Access | `bool` | `false` | no |
| <a name="input_queue_properties_logging"></a> [queue\_properties\_logging](#input\_queue\_properties\_logging) | Logging queue properties | <pre>object({<br>    delete                = optional(bool, true)<br>    read                  = optional(bool, true)<br>    write                 = optional(bool, true)<br>    version               = optional(string, "1.0")<br>    retention_policy_days = optional(number, 10)<br>  })</pre> | `{}` | no |
| <a name="input_queues"></a> [queues](#input\_queues) | List of objects to create some Queues in this Storage Account. | <pre>list(object({<br>    name     = string<br>    metadata = optional(map(string))<br>  }))</pre> | `[]` | no |
| <a name="input_rgname"></a> [rgname](#input\_rgname) | Resource Group name | `string` | n/a | yes |
| <a name="input_sftp_enabled"></a> [sftp\_enabled](#input\_sftp\_enabled) | Is SFTP enabled? | `bool` | `false` | no |
| <a name="input_shared_access_key_enabled"></a> [shared\_access\_key\_enabled](#input\_shared\_access\_key\_enabled) | Indicates whether the Storage Account permits requests to be authorized with the account access key via Shared Key. If false, then all requests, including shared access signatures, must be authorized with Azure Active Directory (Azure AD). | `bool` | `true` | no |
| <a name="input_static_website_config"></a> [static\_website\_config](#input\_static\_website\_config) | Static website configuration. Can only be set when the `account_kind` is set to `StorageV2` or `BlockBlobStorage`. | <pre>object({<br>    index_document     = optional(string)<br>    error_404_document = optional(string)<br>  })</pre> | `null` | no |
| <a name="input_storage_account_name"></a> [storage\_account\_name](#input\_storage\_account\_name) | Name of the storage account | `string` | n/a | yes |
| <a name="input_storage_blob_cors_rule"></a> [storage\_blob\_cors\_rule](#input\_storage\_blob\_cors\_rule) | Storage Account blob CORS rule. Please refer to the [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account#cors_rule) for more information. | <pre>object({<br>    allowed_headers    = list(string)<br>    allowed_methods    = list(string)<br>    allowed_origins    = list(string)<br>    exposed_headers    = list(string)<br>    max_age_in_seconds = number<br>  })</pre> | `null` | no |
| <a name="input_storage_blob_data_protection"></a> [storage\_blob\_data\_protection](#input\_storage\_blob\_data\_protection) | Storage account blob Data protection parameters. | <pre>object({<br>    change_feed_enabled                       = optional(bool, false)<br>    versioning_enabled                        = optional(bool, false)<br>    last_access_time_enabled                  = optional(bool, false)<br>    delete_retention_policy_in_days           = optional(number, 0)<br>    container_delete_retention_policy_in_days = optional(number, 0)<br>    container_point_in_time_restore           = optional(bool, false)<br>  })</pre> | <pre>{<br>  "change_feed_enabled": true,<br>  "container_delete_retention_policy_in_days": 30,<br>  "container_point_in_time_restore": true,<br>  "delete_retention_policy_in_days": 30,<br>  "last_access_time_enabled": true,<br>  "versioning_enabled": true<br>}</pre> | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | Subnets to allow access to that Storage Account. | `list(string)` | `[]` | no |
| <a name="input_tables"></a> [tables](#input\_tables) | List of objects to create some Tables in this Storage Account. | <pre>list(object({<br>    name = string<br>    acl = optional(list(object({<br>      id          = string<br>      permissions = string<br>      start       = optional(string)<br>      expiry      = optional(string)<br>    })))<br>  }))</pre> | `[]` | no |
| <a name="input_use_subdomain"></a> [use\_subdomain](#input\_use\_subdomain) | Should the Custom Domain Name be validated by using indirect CNAME validation? | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_primary_blob_endpoint"></a> [primary\_blob\_endpoint](#output\_primary\_blob\_endpoint) | n/a |
| <a name="output_primary_blob_host"></a> [primary\_blob\_host](#output\_primary\_blob\_host) | n/a |
| <a name="output_primary_blob_microsoft_endpoint"></a> [primary\_blob\_microsoft\_endpoint](#output\_primary\_blob\_microsoft\_endpoint) | n/a |
| <a name="output_primary_blob_microsoft_host"></a> [primary\_blob\_microsoft\_host](#output\_primary\_blob\_microsoft\_host) | n/a |
| <a name="output_primary_dfs_host"></a> [primary\_dfs\_host](#output\_primary\_dfs\_host) | n/a |
| <a name="output_storage_account_id"></a> [storage\_account\_id](#output\_storage\_account\_id) | Created Storage Account ID. |
| <a name="output_storage_account_identity"></a> [storage\_account\_identity](#output\_storage\_account\_identity) | Created Storage Account identity block. |
| <a name="output_storage_account_key"></a> [storage\_account\_key](#output\_storage\_account\_key) | n/a |
| <a name="output_storage_account_name"></a> [storage\_account\_name](#output\_storage\_account\_name) | Created Storage Account name. |
| <a name="output_storage_account_network_rules"></a> [storage\_account\_network\_rules](#output\_storage\_account\_network\_rules) | Network rules of the associated Storage Account. |
| <a name="output_storage_account_properties"></a> [storage\_account\_properties](#output\_storage\_account\_properties) | Created Storage Account properties. |
| <a name="output_storage_blob_containers"></a> [storage\_blob\_containers](#output\_storage\_blob\_containers) | Created blob containers in the Storage Account. |
| <a name="output_storage_file_queues"></a> [storage\_file\_queues](#output\_storage\_file\_queues) | Created queues in the Storage Account. |
| <a name="output_storage_file_shares"></a> [storage\_file\_shares](#output\_storage\_file\_shares) | Created file shares in the Storage Account. |
| <a name="output_storage_file_tables"></a> [storage\_file\_tables](#output\_storage\_file\_tables) | Created tables in the Storage Account. |
