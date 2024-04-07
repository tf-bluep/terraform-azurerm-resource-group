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
| [azurerm_storage_account.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_kind"></a> [account\_kind](#input\_account\_kind) | Defines the Kind of account. Valid options are BlobStorage, BlockBlobStorage, FileStorage, Storage and StorageV2 | `string` | n/a | yes |
| <a name="input_account_replication_type"></a> [account\_replication\_type](#input\_account\_replication\_type) | Storage account replication type - i.e. LRS, GRS, RAGRS, ZRS, GZRS, RAGZRS. | `string` | n/a | yes |
| <a name="input_account_tier"></a> [account\_tier](#input\_account\_tier) | Defines the Tier to use for this storage account (Standard or Premium). | `string` | n/a | yes |
| <a name="input_allow_nested_items_to_be_public"></a> [allow\_nested\_items\_to\_be\_public](#input\_allow\_nested\_items\_to\_be\_public) | Allow or disallow public access to all blobs or containers in the storage account. | `bool` | `false` | no |
| <a name="input_application"></a> [application](#input\_application) | n/a | `string` | n/a | yes |
| <a name="input_costcenter"></a> [costcenter](#input\_costcenter) | n/a | `string` | n/a | yes |
| <a name="input_default_to_oauth_authentication"></a> [default\_to\_oauth\_authentication](#input\_default\_to\_oauth\_authentication) | Set default authentication to storage account content | `bool` | `false` | no |
| <a name="input_department"></a> [department](#input\_department) | n/a | `string` | n/a | yes |
| <a name="input_enable_hns"></a> [enable\_hns](#input\_enable\_hns) | Enable Hierarchical Namespace (can be used with Azure Data Lake Storage Gen 2). | `bool` | `false` | no |
| <a name="input_enable_https_traffic_only"></a> [enable\_https\_traffic\_only](#input\_enable\_https\_traffic\_only) | Forces HTTPS if enabled. | `bool` | `true` | no |
| <a name="input_enable_large_file_share"></a> [enable\_large\_file\_share](#input\_enable\_large\_file\_share) | Enable Large File Share. | `bool` | `false` | no |
| <a name="input_enable_sftp"></a> [enable\_sftp](#input\_enable\_sftp) | Enable SFTP for storage account (enable\_hns must be set to true for this to work). | `bool` | `false` | no |
| <a name="input_env"></a> [env](#input\_env) | n/a | `string` | n/a | yes |
| <a name="input_infrastructure_encryption_enabled"></a> [infrastructure\_encryption\_enabled](#input\_infrastructure\_encryption\_enabled) | Is infrastructure encryption enabled? Changing this forces a new resource to be created. | `bool` | `true` | no |
| <a name="input_location"></a> [location](#input\_location) | Location of Storage Account | `string` | n/a | yes |
| <a name="input_min_tls_version"></a> [min\_tls\_version](#input\_min\_tls\_version) | The minimum supported TLS version for the storage account. | `string` | `"TLS1_2"` | no |
| <a name="input_nfsv3_enabled"></a> [nfsv3\_enabled](#input\_nfsv3\_enabled) | Is NFSv3 protocol enabled? Changing this forces a new resource to be created | `bool` | `false` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | n/a | `string` | n/a | yes |
| <a name="input_public_network_access_enabled"></a> [public\_network\_access\_enabled](#input\_public\_network\_access\_enabled) | Public Access | `bool` | `false` | no |
| <a name="input_rgname"></a> [rgname](#input\_rgname) | Resource Group name | `string` | n/a | yes |
| <a name="input_shared_access_key_enabled"></a> [shared\_access\_key\_enabled](#input\_shared\_access\_key\_enabled) | Indicates whether the storage account permits requests to be authorized with the account access key via Shared Key | `bool` | `true` | no |
| <a name="input_storage_account_name"></a> [storage\_account\_name](#input\_storage\_account\_name) | Name of the storage account | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_storage_account_adls_gen2_url"></a> [storage\_account\_adls\_gen2\_url](#output\_storage\_account\_adls\_gen2\_url) | n/a |
| <a name="output_storage_account_id"></a> [storage\_account\_id](#output\_storage\_account\_id) | n/a |
| <a name="output_storage_account_key"></a> [storage\_account\_key](#output\_storage\_account\_key) | n/a |
| <a name="output_storage_endpoint"></a> [storage\_endpoint](#output\_storage\_endpoint) | n/a |
| <a name="output_storage_host"></a> [storage\_host](#output\_storage\_host) | n/a |
| <a name="output_storage_name"></a> [storage\_name](#output\_storage\_name) | n/a |
