module "s3" {
  # Name of the S3 bucket
  bucket_name                = "flyte-cluster"
  
  # Enable or disable same region replication
  same_region_replication    = false
  
  # Enable or disable blocking public access
  block_public               = true
  
  # The policy to apply to the bucket, if any
  bucket_policy              = {}
  
  # Enable or disable CORS
  cors_enabled               = false
  
  # CORS rules to apply, if any
  cors_rule                  = []
  
  # Files to be added to the bucket, if any
  files                      = ""
  
  # Source of the module
  source                     = "git::undefined?ref=undefined"
  
  # Environment name
  env_name                   = "staging-ca-central-1"
  
  # Layer name
  layer_name                 = "staging-ca-central-1"
  
  # Name of the module
  module_name                = "s3"
  
  # Name of the S3 bucket to log access requests, if any
  s3_log_bucket_name         = ""
}