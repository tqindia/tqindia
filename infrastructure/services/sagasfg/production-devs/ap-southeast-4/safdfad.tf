module "safdfad" {
  # Indicates whether the queue is FIFO (First-In-First-Out)
  fifo = false

  # Enable content-based deduplication for the queue
  content_based_deduplication = false

  # The amount of time, in seconds, that the delivery of all messages in the queue will be delayed.
  delay_seconds = 0

  # The number of seconds that Amazon SQS retains a message.
  message_retention_seconds = 345600

  # The time for which a ReceiveMessage call will wait for a message to arrive in the queue before returning.
  receive_wait_time_seconds = 0

  # The source URL for the module
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_sqs?ref=main"

  # Environment name for the queue
  env_name = "production-devs-ap-southeast-4"

  # Layer name for the queue
  layer_name = "production-devs-ap-southeast-4"

  # Module name for identification
  module_name = "safdfad"
}