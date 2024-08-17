module "ghfgjh" {
  # Source of the module
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_sqs?ref=main"

  # Module and environment configuration
  env_name   = "production-aws-us-east-1"
  layer_name = "production-aws-us-east-1"
  module_name = "ghfgjh"

  # SQS Queue properties
  fifo                          = false
  content_based_deduplication   = false
  delay_seconds                 = 0
  message_retention_seconds     = 345600
  receive_wait_time_seconds     = 0
}