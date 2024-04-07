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
| [azurerm_storage_container.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_container) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_type"></a> [access\_type](#input\_access\_type) | Container Access type | `string` | `"private"` | no |
| <a name="input_container_names"></a> [container\_names](#input\_container\_names) | List of Azure Storage Container names | `list(string)` | n/a | yes |
| <a name="input_storage_account_name"></a> [storage\_account\_name](#input\_storage\_account\_name) | Storage Account Name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_main_storage_container_ids"></a> [main\_storage\_container\_ids](#output\_main\_storage\_container\_ids) | n/a |
