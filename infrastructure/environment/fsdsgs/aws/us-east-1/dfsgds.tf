module "dfsgds" {
  fifo                      = false
  content_based_deduplication = false
  delay_seconds             = 0
  message_retention_seconds = 345600
  receive_wait_time_seconds = 0
  source                    = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_sqs?ref=main"
  env_name                  = "fsdsgs-us-east-1"
  layer_name                = "fsdsgs-us-east-1"
  module_name               = "dfsgds"
}

# This Terraform module creates an AWS SQS queue with the specified configuration.
# Parameters:
# - fifo: Determines whether the queue will be a FIFO queue (default: false).
# - content_based_deduplication: Enables content-based deduplication for the queue (default: false).
# - delay_seconds: The time in seconds that the delivery of all messages in the queue will be delayed (default: 0).
# - message_retention_seconds: The number of seconds Amazon SQS retains a message (default: 345600).
# - receive_wait_time_seconds: The time for which a ReceiveMessage call will wait for a message to arrive (long polling).
# - source: The source location of the module. It pulls from a Git repository.
# - env_name: The environment name tag for the queue.
# - layer_name: The layer name tag for the queue.
# - module_name: The name of this module instantiation.