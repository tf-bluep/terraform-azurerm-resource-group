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
| [azurerm_eventgrid_system_topic.eventgrid_system_topic](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/eventgrid_system_topic) | resource |
| [azurerm_eventgrid_system_topic_event_subscription.event_subscription](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/eventgrid_system_topic_event_subscription) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_advanced_filter"></a> [advanced\_filter](#input\_advanced\_filter) | Filter a value of an event for an event subscription based on a condition | `any` | `{}` | no |
| <a name="input_advanced_filtering_on_arrays_enabled"></a> [advanced\_filtering\_on\_arrays\_enabled](#input\_advanced\_filtering\_on\_arrays\_enabled) | Specifies whether advanced filters should be evaluated against an array of values instead of expecting a singular value | `bool` | `false` | no |
| <a name="input_application"></a> [application](#input\_application) | n/a | `string` | n/a | yes |
| <a name="input_costcenter"></a> [costcenter](#input\_costcenter) | n/a | `string` | n/a | yes |
| <a name="input_department"></a> [department](#input\_department) | n/a | `string` | n/a | yes |
| <a name="input_env"></a> [env](#input\_env) | n/a | `string` | n/a | yes |
| <a name="input_event_delivery_schema"></a> [event\_delivery\_schema](#input\_event\_delivery\_schema) | Specifies the event delivery schema for the event subscription. Possible values include: `EventGridSchema`, `CloudEventSchemaV1_0`, `CustomInputSchema`. | `string` | `"EventGridSchema"` | no |
| <a name="input_event_subscription_name"></a> [event\_subscription\_name](#input\_event\_subscription\_name) | Name of the event subscription | `string` | n/a | yes |
| <a name="input_eventgrid_name"></a> [eventgrid\_name](#input\_eventgrid\_name) | Name of the Event Grid System Topic | `string` | n/a | yes |
| <a name="input_eventgrid_system_topic_id"></a> [eventgrid\_system\_topic\_id](#input\_eventgrid\_system\_topic\_id) | Eventgrid system topic ID to attach the event subscription | `string` | n/a | yes |
| <a name="input_eventhub_endpoint_id"></a> [eventhub\_endpoint\_id](#input\_eventhub\_endpoint\_id) | ID of the EventHub where the Event subscription will receive events | `string` | `null` | no |
| <a name="input_expiration_time_utc"></a> [expiration\_time\_utc](#input\_expiration\_time\_utc) | Specifies the expiration time of the event subscription (Datetime Format RFC 3339). | `string` | `null` | no |
| <a name="input_hybrid_connection_endpoint_id"></a> [hybrid\_connection\_endpoint\_id](#input\_hybrid\_connection\_endpoint\_id) | ID of the Hybrid Connection where the Event subscription will receive events | `string` | `null` | no |
| <a name="input_included_event_types"></a> [included\_event\_types](#input\_included\_event\_types) | List of applicable event types that need to be part of the event subscription | `list(string)` | `[]` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | List of labels to assign to the event subscription | `list(string)` | `null` | no |
| <a name="input_location"></a> [location](#input\_location) | Location of the Event Grid System Topic | `string` | n/a | yes |
| <a name="input_owner"></a> [owner](#input\_owner) | n/a | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Resource group name | `string` | n/a | yes |
| <a name="input_retry_policy"></a> [retry\_policy](#input\_retry\_policy) | Delivery retry attempts for events | `any` | `{}` | no |
| <a name="input_service_bus_queue_endpoint_id"></a> [service\_bus\_queue\_endpoint\_id](#input\_service\_bus\_queue\_endpoint\_id) | ID of the Service Bus Queue where the Event subscription will receive events | `string` | `null` | no |
| <a name="input_service_bus_topic_endpoint_id"></a> [service\_bus\_topic\_endpoint\_id](#input\_service\_bus\_topic\_endpoint\_id) | ID of the Service Bus Topic where the Event subscription will receive events | `string` | `null` | no |
| <a name="input_source_storage_account_id"></a> [source\_storage\_account\_id](#input\_source\_storage\_account\_id) | ID of the source storage account | `string` | n/a | yes |
| <a name="input_storage_blob_dead_letter_destination"></a> [storage\_blob\_dead\_letter\_destination](#input\_storage\_blob\_dead\_letter\_destination) | Storage blob container that is the destination of the deadletter events | `any` | `{}` | no |
| <a name="input_storage_queue_endpoint"></a> [storage\_queue\_endpoint](#input\_storage\_queue\_endpoint) | Storage Queue endpoint block configuration where the Event subscription will receive events | `any` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_eventgrid_id"></a> [eventgrid\_id](#output\_eventgrid\_id) | Eventgrid subscription ID |
| <a name="output_eventgrid_name"></a> [eventgrid\_name](#output\_eventgrid\_name) | Evengrid subscription name |
| <a name="output_identity_principal_id"></a> [identity\_principal\_id](#output\_identity\_principal\_id) | Azure Event Grid System Topic identity's principal ID |
| <a name="output_metric_arm_resource_id"></a> [metric\_arm\_resource\_id](#output\_metric\_arm\_resource\_id) | Azure Event Grid System Topic's metric ARM resource ID |
| <a name="output_topic_id"></a> [topic\_id](#output\_topic\_id) | Azure Event Grid System Topic ID |
| <a name="output_topic_name"></a> [topic\_name](#output\_topic\_name) | Azure Event Grid System Topic name |
