module "notificationsQueue" {
  # Indicates if the queue is FIFO (First In First Out)
  fifo = false

  # Enables content-based deduplication
  content_based_deduplication = false

  # Time in seconds for which the delivery of all messages in the queue is delayed
  delay_seconds = 0

  # Time in seconds for which messages are retained in the queue
  message_retention_seconds = 345600

  # Time in seconds for which a ReceiveMessage call will wait for a message to arrive
  receive_wait_time_seconds = 0

  # Source of the terraform module
  source = "git::undefined?ref=undefined"

  # Environment name where the queue will be deployed
  env_name = "staging-ca-central-1"

  # Layer name for the deployment
  layer_name = "staging-ca-central-1"

  # Module name for the queue
  module_name = "notificationsQueue"
}