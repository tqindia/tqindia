module "schedulesQueue" {
  # FIFO (First In, First Out) queue.
  fifo = false

  # Enable content-based deduplication.
  content_based_deduplication = false

  # The time (in seconds) that the delivery of all messages in the queue is delayed.
  delay_seconds = 0

  # The time (in seconds) for which Amazon SQS retains a message.
  message_retention_seconds = 345600

  # The time for which a ReceiveMessage call will wait for a message to arrive.
  receive_wait_time_seconds = 0

  # The source location of the module.
  source = "git::undefined?ref=undefined"

  # The environment name.
  env_name = "staging-ca-central-1"

  # The layer name.
  layer_name = "staging-ca-central-1"

  # The name of the module.
  module_name = "schedulesQueue"
}