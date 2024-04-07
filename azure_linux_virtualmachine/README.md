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
| [azurerm_linux_virtual_machine.linuxvm](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_virtual_machine) | resource |
| [azurerm_managed_disk.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/managed_disk) | resource |
| [azurerm_network_interface.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface) | resource |
| [azurerm_network_interface_security_group_association.nsgass](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface_security_group_association) | resource |
| [azurerm_network_security_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group) | resource |
| [azurerm_resource_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_virtual_machine_data_disk_attachment.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_machine_data_disk_attachment) | resource |
| [azurerm_location.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/location) | data source |
| [azurerm_resource_group.existing](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |
| [azurerm_subnet.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subnet) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application"></a> [application](#input\_application) | n/a | `string` | n/a | yes |
| <a name="input_costcenter"></a> [costcenter](#input\_costcenter) | n/a | `string` | n/a | yes |
| <a name="input_datadisksize"></a> [datadisksize](#input\_datadisksize) | n/a | `any` | n/a | yes |
| <a name="input_datadisktype"></a> [datadisktype](#input\_datadisktype) | n/a | `string` | n/a | yes |
| <a name="input_department"></a> [department](#input\_department) | n/a | `string` | n/a | yes |
| <a name="input_env"></a> [env](#input\_env) | n/a | `string` | n/a | yes |
| <a name="input_linux_password"></a> [linux\_password](#input\_linux\_password) | n/a | `string` | n/a | yes |
| <a name="input_linux_username"></a> [linux\_username](#input\_linux\_username) | n/a | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | `"CentralIndia"` | no |
| <a name="input_offer"></a> [offer](#input\_offer) | n/a | `string` | n/a | yes |
| <a name="input_os_disk_size"></a> [os\_disk\_size](#input\_os\_disk\_size) | n/a | `string` | n/a | yes |
| <a name="input_os_disk_type"></a> [os\_disk\_type](#input\_os\_disk\_type) | n/a | `string` | n/a | yes |
| <a name="input_owner"></a> [owner](#input\_owner) | n/a | `string` | n/a | yes |
| <a name="input_private_ip_address"></a> [private\_ip\_address](#input\_private\_ip\_address) | Static private IP address for the virtual machine (if allocation is Static) | `string` | `null` | no |
| <a name="input_private_ip_address_allocation"></a> [private\_ip\_address\_allocation](#input\_private\_ip\_address\_allocation) | Allocation method for private IP address (Dynamic or Static) | `string` | `"Dynamic"` | no |
| <a name="input_publisher"></a> [publisher](#input\_publisher) | n/a | `string` | n/a | yes |
| <a name="input_rgname"></a> [rgname](#input\_rgname) | n/a | `string` | n/a | yes |
| <a name="input_size"></a> [size](#input\_size) | n/a | `string` | n/a | yes |
| <a name="input_sku"></a> [sku](#input\_sku) | n/a | `string` | n/a | yes |
| <a name="input_subnetname"></a> [subnetname](#input\_subnetname) | n/a | `string` | n/a | yes |
| <a name="input_vNet"></a> [vNet](#input\_vNet) | n/a | `string` | n/a | yes |
| <a name="input_vmname"></a> [vmname](#input\_vmname) | n/a | `any` | n/a | yes |
| <a name="input_vnetcidr"></a> [vnetcidr](#input\_vnetcidr) | n/a | `string` | n/a | yes |
| <a name="input_vnetrg"></a> [vnetrg](#input\_vnetrg) | n/a | `string` | n/a | yes |
| <a name="input_zone"></a> [zone](#input\_zone) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_rg_name"></a> [rg\_name](#output\_rg\_name) | n/a |
