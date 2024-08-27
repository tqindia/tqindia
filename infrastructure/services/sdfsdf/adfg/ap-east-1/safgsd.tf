module "safgsd" {
  fifo = false

  content_based_deduplication = false

  delay_seconds = 0

  message_retention_seconds = 345600

  receive_wait_time_seconds = 0

  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_sqs?ref=main"

  env_name = "adfg-ap-east-1"

  layer_name = "adfg-ap-east-1"

  module_name = "safgsd"
}