module "Hell" {
  fifo                        = false
  content_based_deduplication = false
  delay_seconds               = 0
  message_retention_seconds   = 345600
  receive_wait_time_seconds   = 0
  source                      = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_sqs?ref=main"
  env_name                    = "hell-us-west-1"
  layer_name                  = "hell-us-west-1"
  module_name                 = "Hell"
}

# This module configuration initializes an AWS SQS queue with the following properties:
# - FIFO queue: false (standard queue)
# - Content-based deduplication: false
# - Delay seconds: 0 (no delay)
# - Message retention: 345600 seconds (4 days)
# - Receive wait time: 0 seconds (short polling)
# - Source of the module from a Git repository
# - Environment and Layer names set to "hell-us-west-1"
# - Module name set to "Hell"