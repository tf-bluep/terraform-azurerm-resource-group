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
| [azurerm_data_factory.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory) | resource |
| [azurerm_data_factory_integration_runtime_azure.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory_integration_runtime_azure) | resource |
| [azurerm_data_factory_integration_runtime_azure_ssis.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory_integration_runtime_azure_ssis) | resource |
| [azurerm_data_factory_integration_runtime_self_hosted.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory_integration_runtime_self_hosted) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application"></a> [application](#input\_application) | n/a | `string` | n/a | yes |
| <a name="input_azure_devops_configuration"></a> [azure\_devops\_configuration](#input\_azure\_devops\_configuration) | Azure DevOps configuration for data factory. See documentation at https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#vsts_configuration | `map(string)` | `null` | no |
| <a name="input_costcenter"></a> [costcenter](#input\_costcenter) | n/a | `string` | n/a | yes |
| <a name="input_data_factory_name"></a> [data\_factory\_name](#input\_data\_factory\_name) | Data Factory ID | `string` | n/a | yes |
| <a name="input_department"></a> [department](#input\_department) | n/a | `string` | n/a | yes |
| <a name="input_env"></a> [env](#input\_env) | Environment | `string` | n/a | yes |
| <a name="input_github_configuration"></a> [github\_configuration](#input\_github\_configuration) | Github configuration for data factory. See documentation at https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#github_configuration | `map(string)` | `null` | no |
| <a name="input_global_parameters"></a> [global\_parameters](#input\_global\_parameters) | Global parameters for data factory. See documentation at https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#global_parameter | `list(map(string))` | `[]` | no |
| <a name="input_integration_runtime_configuration"></a> [integration\_runtime\_configuration](#input\_integration\_runtime\_configuration) | Parameters used to configure `AzureSSIS` integration runtime:<br>    `node_size` (optional, defaults to `Standard_D2_v3`)<br>    `number_of_nodes` (optional, defaults to `1`)<br>    `max_parallel_executions_per_nodes` (optional, defaults to `1`)<br>    `edition` (optional, defaults to `Standard`)<br>    `license_type` (optional, defaults to `LicenseIncluded`)<br>  Parameters used to configure `Azure` integration runtime<br>    `cleanup_enabled` (optional, defaults to `true`)<br>    `compute_type` (optional, defaults to `General`)<br>    `core_count` (optional, defaults to `8`)<br>    `time_to_live_min` (optional, defaults to `0`)<br>    `virtual_network_enabled` (optional, defaults to `false`) | `map(any)` | `{}` | no |
| <a name="input_integration_runtime_custom_name"></a> [integration\_runtime\_custom\_name](#input\_integration\_runtime\_custom\_name) | Name of the integration\_runtime resource | `string` | `null` | no |
| <a name="input_integration_runtime_description"></a> [integration\_runtime\_description](#input\_integration\_runtime\_description) | Integration runtime description | `string` | `null` | no |
| <a name="input_integration_runtime_type"></a> [integration\_runtime\_type](#input\_integration\_runtime\_type) | Specifies the integration runtime type. Possible values are `Azure`, `AzureSSIS` and `SelfHosted` | `string` | `null` | no |
| <a name="input_location"></a> [location](#input\_location) | Location of Storage Account | `string` | n/a | yes |
| <a name="input_managed_virtual_network_enabled"></a> [managed\_virtual\_network\_enabled](#input\_managed\_virtual\_network\_enabled) | True to enable managed virtual network | `bool` | `true` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | n/a | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Project Name | `string` | n/a | yes |
| <a name="input_public_network_enabled"></a> [public\_network\_enabled](#input\_public\_network\_enabled) | True to make data factory visible to the public network | `bool` | `false` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Resource Group Name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_data_factory_id"></a> [data\_factory\_id](#output\_data\_factory\_id) | Data factory id |
| <a name="output_data_factory_integration_runtime_id"></a> [data\_factory\_integration\_runtime\_id](#output\_data\_factory\_integration\_runtime\_id) | Data factory integration runtime id |
| <a name="output_data_factory_integration_runtime_type"></a> [data\_factory\_integration\_runtime\_type](#output\_data\_factory\_integration\_runtime\_type) | Data factory integration runtime type |
| <a name="output_data_factory_managed_identity"></a> [data\_factory\_managed\_identity](#output\_data\_factory\_managed\_identity) | Type of managed identity |
| <a name="output_data_factory_name"></a> [data\_factory\_name](#output\_data\_factory\_name) | Data factory name |
| <a name="output_data_factory_self_hosted_integration_runtime_primary_authorization_key"></a> [data\_factory\_self\_hosted\_integration\_runtime\_primary\_authorization\_key](#output\_data\_factory\_self\_hosted\_integration\_runtime\_primary\_authorization\_key) | The self hosted integration runtime primary authentication key |
| <a name="output_data_factory_self_hosted_integration_runtime_secondary_authorization_key"></a> [data\_factory\_self\_hosted\_integration\_runtime\_secondary\_authorization\_key](#output\_data\_factory\_self\_hosted\_integration\_runtime\_secondary\_authorization\_key) | The self hosted integration runtime secondary authentication key |
