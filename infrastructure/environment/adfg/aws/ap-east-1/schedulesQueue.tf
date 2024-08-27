module "schedulesQueue" {
  # Determines whether the SQS queue is FIFO (First-In-First-Out)
  fifo = false

  # Enables content-based deduplication for messages within the queue
  content_based_deduplication = false

  # The amount of time, in seconds, for which the delivery of all messages in the queue is delayed
  delay_seconds = 0

  # The length of time, in seconds, for which Amazon SQS retains a message
  message_retention_seconds = 345600

  # The maximum amount of time, in seconds, that a long polling receive call waits for a message to become available
  receive_wait_time_seconds = 0

  # Source of the module code, typically a git repository or a Terraform Registry URL
  source = "git::undefined?ref=undefined"

  # Name of the environment
  env_name = "adfg-ap-east-1"

  # Name of the layer
  layer_name = "adfg-ap-east-1"

  # Name of the module
  module_name = "schedulesQueue"
}