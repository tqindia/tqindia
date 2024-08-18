module "test" {
  fifo                      = false
  content_based_deduplication = false
  delay_seconds             = 0
  message_retention_seconds = 345600
  receive_wait_time_seconds = 0
  source                    = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_sqs?ref=main"
  env_name                  = "hell-us-west-1"
  layer_name                = "hell-us-west-1"
  module_name               = "test"
}

# This Terraform configuration defines a module named "test" to configure an AWS SQS queue. 
# The parameters set the properties of the SQS queue such as:
# - `fifo` (disabled)
# - `content_based_deduplication` (disabled)
# - `delay_seconds` (0 seconds)
# - `message_retention_seconds` (4 days or 345600 seconds)
# - `receive_wait_time_seconds` (0 seconds of wait time for long polling)
# 
# The source of the module is a Git repository hosted on GitHub which provides the AWS SQS configuration.
# The `env_name` and `layer_name` are set to "hell-us-west-1" indicating the environment and layer name respectively.
# The `module_name` parameter is set to "test".