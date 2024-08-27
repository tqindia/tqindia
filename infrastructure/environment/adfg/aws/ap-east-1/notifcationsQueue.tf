module "notificationsQueue" {
  # Specifies whether the queue is a FIFO (First-In-First-Out) queue
  fifo = false

  # Enables content-based deduplication for FIFO queues (irrelevant for standard queues)
  content_based_deduplication = false

  # The time in seconds that the delivery of all messages in the queue will be delayed
  delay_seconds = 0

  # The length of time, in seconds, for which Amazon SQS retains a message
  message_retention_seconds = 345600

  # The time in seconds for which a ReceiveMessage action waits for a message to arrive
  receive_wait_time_seconds = 0

  # The source location of the module
  source = "git::undefined?ref=undefined"

  # Environment name
  env_name = "adfg-ap-east-1"

  # Layer name
  layer_name = "adfg-ap-east-1"

  # Module name
  module_name = "notificationsQueue"
}