module "test" {
  # Specify whether to enable FIFO (First In, First Out) queue
  fifo = false

  # Enable content-based deduplication for the SQS queue
  content_based_deduplication = false

  # The amount of time to delay the initial visibility of messages (in seconds)
  delay_seconds = 0

  # The length of time that Amazon SQS retains a message (in seconds)
  message_retention_seconds = 345600

  # The maximum amount of time to wait for a message to become available when polling the queue (in seconds)
  receive_wait_time_seconds = 0

  # The source of the module, in this case a GitHub repository URL with a specific reference
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_sqs?ref=main"

  # Environment name for the SQS queue
  env_name = "staging-us-east-2"

  # Layer name for the SQS queue
  layer_name = "staging-us-east-2"

  # Name of the module
  module_name = "test"
}