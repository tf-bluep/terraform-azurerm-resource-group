## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |
| <a name="provider_azurerm.shared-image"></a> [azurerm.shared-image](#provider\_azurerm.shared-image) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_managed_disk.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/managed_disk) | resource |
| [azurerm_network_interface.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface) | resource |
| [azurerm_network_interface_security_group_association.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface_security_group_association) | resource |
| [azurerm_network_security_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group) | resource |
| [azurerm_virtual_machine_data_disk_attachment.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_machine_data_disk_attachment) | resource |
| [azurerm_virtual_machine_extension.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_machine_extension) | resource |
| [azurerm_windows_virtual_machine.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/windows_virtual_machine) | resource |
| [azurerm_location.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/location) | data source |
| [azurerm_shared_image_version.image_2016](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/shared_image_version) | data source |
| [azurerm_shared_image_version.image_2019](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/shared_image_version) | data source |
| [azurerm_shared_image_version.image_2022](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/shared_image_version) | data source |
| [azurerm_subnet.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subnet) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_OS"></a> [OS](#input\_OS) | n/a | `string` | n/a | yes |
| <a name="input_application"></a> [application](#input\_application) | n/a | `string` | n/a | yes |
| <a name="input_costcenter"></a> [costcenter](#input\_costcenter) | n/a | `string` | n/a | yes |
| <a name="input_datadisksize"></a> [datadisksize](#input\_datadisksize) | n/a | `any` | n/a | yes |
| <a name="input_datadisktype"></a> [datadisktype](#input\_datadisktype) | n/a | `string` | n/a | yes |
| <a name="input_department"></a> [department](#input\_department) | n/a | `string` | n/a | yes |
| <a name="input_domain"></a> [domain](#input\_domain) | n/a | `string` | `"Yes"` | no |
| <a name="input_domainpass"></a> [domainpass](#input\_domainpass) | n/a | `string` | n/a | yes |
| <a name="input_env"></a> [env](#input\_env) | n/a | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | `"CentralIndia"` | no |
| <a name="input_os_disk_size"></a> [os\_disk\_size](#input\_os\_disk\_size) | n/a | `string` | n/a | yes |
| <a name="input_os_disk_type"></a> [os\_disk\_type](#input\_os\_disk\_type) | n/a | `string` | n/a | yes |
| <a name="input_os_password"></a> [os\_password](#input\_os\_password) | n/a | `string` | n/a | yes |
| <a name="input_os_username"></a> [os\_username](#input\_os\_username) | n/a | `string` | `"6e_Commander"` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | n/a | `string` | n/a | yes |
| <a name="input_private_ip_address"></a> [private\_ip\_address](#input\_private\_ip\_address) | Static private IP address for the virtual machine (if allocation is Static) | `string` | `null` | no |
| <a name="input_private_ip_address_allocation"></a> [private\_ip\_address\_allocation](#input\_private\_ip\_address\_allocation) | Allocation method for private IP address (Dynamic or Static) | `string` | `"Dynamic"` | no |
| <a name="input_rgname"></a> [rgname](#input\_rgname) | n/a | `string` | n/a | yes |
| <a name="input_size"></a> [size](#input\_size) | n/a | `string` | n/a | yes |
| <a name="input_subnetname"></a> [subnetname](#input\_subnetname) | n/a | `string` | n/a | yes |
| <a name="input_timezone"></a> [timezone](#input\_timezone) | n/a | `string` | `"India Standard Time"` | no |
| <a name="input_vNet"></a> [vNet](#input\_vNet) | n/a | `string` | n/a | yes |
| <a name="input_vmname"></a> [vmname](#input\_vmname) | n/a | `any` | n/a | yes |
| <a name="input_vnetcidr"></a> [vnetcidr](#input\_vnetcidr) | n/a | `string` | n/a | yes |
| <a name="input_vnetrg"></a> [vnetrg](#input\_vnetrg) | n/a | `string` | n/a | yes |
| <a name="input_zone"></a> [zone](#input\_zone) | n/a | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id_2016"></a> [id\_2016](#output\_id\_2016) | n/a |
| <a name="output_id_2019"></a> [id\_2019](#output\_id\_2019) | n/a |
| <a name="output_id_2022"></a> [id\_2022](#output\_id\_2022) | n/a |
| <a name="output_ipconfigname"></a> [ipconfigname](#output\_ipconfigname) | n/a |
| <a name="output_network_interface_id"></a> [network\_interface\_id](#output\_network\_interface\_id) | n/a |
| <a name="output_sg_id"></a> [sg\_id](#output\_sg\_id) | n/a |
| <a name="output_vm_id"></a> [vm\_id](#output\_vm\_id) | n/a |
