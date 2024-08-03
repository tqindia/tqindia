"module" "fdsafsa" {
  "block_public" = true

  "bucket_name" = "safdfsa"

  "bucket_policy" = ""

  "cors_rule" = ""

  "env_name" = "production-us-east-2"

  "files" = ""

  "layer_name" = "production-us-east-2"

  "module_name" = "fdsafsa"

  "s3_log_bucket_name" = ""

  "same_region_replication" = ""

  "source" = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_dns?ref=main"
}