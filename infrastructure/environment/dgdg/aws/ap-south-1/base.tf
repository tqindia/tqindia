module "base" {
  # Environment name
  env_name = "dgdg-ap-south-1"

  # Layer name
  layer_name = "dgdg-ap-south-1"

  # Module name
  module_name = "base"

  # Private IPv4 CIDR blocks
  private_ipv4_cidr_blocks = ["10.0.128.0/21", "10.0.136.0/21", "10.0.144.0/21"]

  # Private subnet IDs
  private_subnet_ids = [] # This should be populated with actual subnet IDs

  # Public IPv4 CIDR blocks
  public_ipv4_cidr_blocks = ["10.0.0.0/21", "10.0.8.0/21", "10.0.16.0/21"]

  # Public subnet IDs
  public_subnet_ids = [] # This should be populated with actual subnet IDs

  # Total IPv4 CIDR block
  total_ipv4_cidr_block = "10.0.0.0/16"

  # VPC ID
  vpc_id = "" # This should be populated with the actual VPC ID

  # VPC log retention period
  vpc_log_retention = 90

  # Source of the module
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_base?ref=main"
}

output "kms_account_key_arn" {
  value = module.base.kms_account_key_arn
}

output "kms_account_key_id" {
  value = module.base.kms_account_key_id
}

output "private_subnet_ids" {
  value = module.base.private_subnet_ids
}

output "public_nat_ips" {
  value = module.base.public_nat_ips
}

output "public_subnets_ids" {
  value = module.base.public_subnets_ids
}

output "s3_log_bucket_name" {
  value = module.base.s3_log_bucket_name
}

output "vpc_id" {
  value = module.base.vpc_id
}