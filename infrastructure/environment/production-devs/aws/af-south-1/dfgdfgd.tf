module "dfgdfgd" {
  fifo                        = false
  content_based_deduplication = false
  delay_seconds               = 0
  message_retention_seconds   = 345600
  receive_wait_time_seconds   = 0
  source                      = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_sqs?ref=main"
  env_name                    = "production-devs-af-south-1"
  layer_name                  = "production-devs-af-south-1"
  module_name                 = "dfgdfgd"
}

# The above configuration defines a Terraform module for an AWS SQS queue with the following properties:
# - `fifo`: Specifies whether it is a FIFO queue. Set to `false`.
# - `content_based_deduplication`: Controls content-based deduplication. Set to `false`.
# - `delay_seconds`: The time in seconds to delay the delivery of all messages in the queue. Set to `0`.
# - `message_retention_seconds`: The number of seconds Amazon SQS retains a message. Set to `345600` (4 days).
# - `receive_wait_time_seconds`: The time for which a ReceiveMessage call waits for a message to arrive. Set to `0`.
# - `source`: The source URL of the Terraform module.
# - `env_name`: The name of the environment.
# - `layer_name`: The name of the layer.
# - `module_name`: The name of the module.