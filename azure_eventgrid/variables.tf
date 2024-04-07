data "azurerm_client_config" "current" {
}
variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "event_subscription_name" {
  description = "Name of the event subscription"
  type        = string
}

variable "eventgrid_system_topic_id" {
  description = "Eventgrid system topic ID to attach the event subscription"
  type        = string
}

variable "expiration_time_utc" {
  description = "Specifies the expiration time of the event subscription (Datetime Format RFC 3339)."
  type        = string
  default     = null
}

variable "event_delivery_schema" {
  description = "Specifies the event delivery schema for the event subscription. Possible values include: `EventGridSchema`, `CloudEventSchemaV1_0`, `CustomInputSchema`."
  type        = string
  default     = "EventGridSchema"
}


variable "eventhub_endpoint_id" {
  description = "ID of the EventHub where the Event subscription will receive events"
  type        = string
  default     = null
}

variable "hybrid_connection_endpoint_id" {
  description = "ID of the Hybrid Connection where the Event subscription will receive events"
  type        = string
  default     = null
}

variable "service_bus_queue_endpoint_id" {
  description = "ID of the Service Bus Queue where the Event subscription will receive events"
  type        = string
  default     = null
}

variable "service_bus_topic_endpoint_id" {
  description = "ID of the Service Bus Topic where the Event subscription will receive events"
  type        = string
  default     = null
}

variable "storage_queue_endpoint" {
  description = "Storage Queue endpoint block configuration where the Event subscription will receive events"
  type        = any
  default     = {}
}

variable "included_event_types" {
  description = "List of applicable event types that need to be part of the event subscription"
  type        = list(string)
  default     = []
}


variable "advanced_filter" {
  description = "Filter a value of an event for an event subscription based on a condition"
  type        = any
  default     = {}
}

variable "storage_blob_dead_letter_destination" {
  description = "Storage blob container that is the destination of the deadletter events"
  type        = any
  default     = {}
}

variable "retry_policy" {
  description = "Delivery retry attempts for events"
  type        = any
  default     = {}
}

variable "labels" {
  description = "List of labels to assign to the event subscription"
  type        = list(string)
  default     = null
}

variable "advanced_filtering_on_arrays_enabled" {
  description = "Specifies whether advanced filters should be evaluated against an array of values instead of expecting a singular value"
  type        = bool
  default     = false
}
variable "eventgrid_name" {
  description = "Name of the Event Grid System Topic"
  type        = string
}


variable "location" {
  description = "Location of the Event Grid System Topic"
  type        = string
}

variable "source_storage_account_id" {
  description = "ID of the source storage account"
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
