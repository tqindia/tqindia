module "s3" {
  # Name of the S3 bucket
  bucket_name = "flyte-cluster"

  # Determines if same-region replication should be set up
  same_region_replication = false

  # Determines if public access should be blocked
  block_public = true

  # Policy for the S3 bucket
  bucket_policy = {}

  # Determines if CORS should be enabled for the bucket
  cors_enabled = false

  # List of CORS rules to apply
  cors_rule = []

  # Files to be stored in the bucket
  files = ""

  # Source of the module
  source = "git::undefined?ref=undefined"

  # Environment name
  env_name = "adfg-ap-east-1"

  # Layer name
  layer_name = "adfg-ap-east-1"

  # Module name
  module_name = "s3"

  # Name of the bucket for S3 logs
  s3_log_bucket_name = ""
}