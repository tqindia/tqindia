"module" "s3" {
  "bucket_name" = "sdfsadf"

  "same_region_replication" = false

  "block_public" = true

  "bucket_policy" = {}

  "cors_enabled" = false

  "cors_rule" = []

  "files" = ""

  "source" = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_dns?ref=main"

  "env_name" = "production-ap-southeast-4"

  "layer_name" = "production-ap-southeast-4"

  "module_name" = "s3"

  "s3_log_bucket_name" = ""
}