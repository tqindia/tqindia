module "test" {
  # Specifies whether the queue is FIFO (First-In-First-Out)
  fifo = false
  
  # Enables content-based deduplication
  content_based_deduplication = false

  # The amount of time, in seconds, for which the delivery of all messages in the queue is delayed
  delay_seconds = 0

  # The number of seconds that Amazon SQS retains a message
  message_retention_seconds = 345600

  # The maximum amount of time, in seconds, that a long polling receive call waits for a message to arrive
  receive_wait_time_seconds = 0

  # The source location of the Terraform module
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_sqs?ref=main"

  # The environment name for the SQS queue
  env_name = "fdsafsadf-us-east-2"

  # The layer name for the SQS queue within the environment
  layer_name = "fdsafsadf-us-east-2"

  # The name of the module instance
  module_name = "test"
}