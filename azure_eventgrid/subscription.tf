resource "azurerm_eventgrid_system_topic_event_subscription" "event_subscription" {
  name                = var.event_subscription_name
  system_topic        = element(split("/", var.eventgrid_system_topic_id), 8)
  resource_group_name = var.resource_group_name

  expiration_time_utc   = var.expiration_time_utc
  event_delivery_schema = var.event_delivery_schema


  dynamic "storage_queue_endpoint" {
    for_each = var.storage_queue_endpoint != null ? ["storage_queue_endpoint"] : []
    content {
      storage_account_id                    = lookup(var.storage_queue_endpoint, "storage_account_id", "")
      queue_name                            = lookup(var.storage_queue_endpoint, "queue_name", null)
      queue_message_time_to_live_in_seconds = lookup(var.storage_queue_endpoint, "queue_message_time_to_live_in_seconds", null)
    }
  }

  eventhub_endpoint_id          = try(var.eventhub_endpoint_id, "")
  hybrid_connection_endpoint_id = try(var.hybrid_connection_endpoint_id, "")
  service_bus_queue_endpoint_id = try(var.service_bus_queue_endpoint_id, "")
  service_bus_topic_endpoint_id = try(var.service_bus_topic_endpoint_id, "")

  included_event_types = var.included_event_types

  advanced_filter {
    string_in {
      key    = "data.api"
      values = ["CopyBlob", "PutBlob", "PutBlockList", "FlushWithClose", "SftpCommit"]
    }
  }

  dynamic "storage_blob_dead_letter_destination" {
    for_each = var.storage_blob_dead_letter_destination
    content {
      storage_account_id          = lookup(var.storage_blob_dead_letter_destination, "storage_account_id", null)
      storage_blob_container_name = lookup(var.storage_blob_dead_letter_destination, "storage_blob_container_name", null)
    }
  }

  dynamic "retry_policy" {
    for_each = var.retry_policy
    content {
      max_delivery_attempts = lookup(var.retry_policy, "max_delivery_attempts", null)
      event_time_to_live    = lookup(var.retry_policy, "event_time_to_live", null)
    }
  }

  labels                               = var.labels
  advanced_filtering_on_arrays_enabled = var.advanced_filtering_on_arrays_enabled
}
