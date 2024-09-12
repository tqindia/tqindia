module "base" {
  env_name                = "dgdg-us-east-2"
  layer_name              = "dgdg-us-east-2"
  module_name             = "base"
  private_ipv4_cidr_blocks = ["10.0.128.0/21", "10.0.136.0/21", "10.0.144.0/21"]
  private_subnet_ids      = []  # Add your private subnet IDs here if available
  public_ipv4_cidr_blocks = ["10.0.0.0/21", "10.0.8.0/21", "10.0.16.0/21"]
  public_subnet_ids       = []  # Add your public subnet IDs here if available
  total_ipv4_cidr_block   = "10.0.0.0/16"
  vpc_id                  = ""  # Add your VPC ID here
  vpc_log_retention       = 90
  source                  = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_base?ref=main"
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