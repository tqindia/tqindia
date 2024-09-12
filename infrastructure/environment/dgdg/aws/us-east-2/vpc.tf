module "vpc" {
  # Name for the environment
  env_name = "dgdg-us-east-2"
  
  # Layer name within the environment
  layer_name = "dgdg-us-east-2"
  
  # Module name being used
  module_name = "vpc"
  
  # Private IPv4 CIDR blocks for the VPC
  private_ipv4_cidr_blocks = ["10.0.128.0/21", "10.0.136.0/21", "10.0.144.0/21"]
  
  # IDs for the private subnets, null if not existing
  private_subnet_ids = null
  
  # Public IPv4 CIDR blocks for the VPC
  public_ipv4_cidr_blocks = ["10.0.0.0/21", "10.0.8.0/21", "10.0.16.0/21"]
  
  # IDs for the public subnets, null if not existing
  public_subnet_ids = null
  
  # Total IPv4 CIDR block for the VPC
  total_ipv4_cidr_block = "10.0.0.0/16"
  
  # VPC ID, null if creating a new one
  vpc_id = null
  
  # Log retention period for VPC logs
  vpc_log_retention = 90
  
  # Source of the module
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_base?ref=main"
}

output "kms_account_key_arn" {
  value = module.vpc.kms_account_key_arn
}

output "kms_account_key_id" {
  value = module.vpc.kms_account_key_id
}

output "private_subnet_ids" {
  value = module.vpc.private_subnet_ids
}

output "public_nat_ips" {
  value = module.vpc.public_nat_ips
}

output "public_subnets_ids" {
  value = module.vpc.public_subnets_ids
}

output "s3_log_bucket_name" {
  value = module.vpc.s3_log_bucket_name
}

output "vpc_id" {
  value = module.vpc.vpc_id
}