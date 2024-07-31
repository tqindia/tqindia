"module" "sns" {
  "fifo" = false

  "content_based_deduplication" = false

  "sqs_subscribers" = [""]

  "env_name" = "sfd-us-west-1"

  "layer_name" = "sfd-us-west-1"

  "module_name" = "sns"

  "source" = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_sns?ref=main"
}