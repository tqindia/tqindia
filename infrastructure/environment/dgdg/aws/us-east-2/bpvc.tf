module "bpvc" {
  env_name                  = "dgdg-us-east-2"
  layer_name                = "dgdg-us-east-2"
  module_name               = "bpvc"
  private_ipv4_cidr_blocks  = ["10.0.128.0/21", "10.0.136.0/21", "10.0.144.0/21"]
  private_subnet_ids        = null
  public_ipv4_cidr_blocks   = ["10.0.0.0/21", "10.0.8.0/21", "10.0.16.0/21"]
  public_subnet_ids         = null
  total_ipv4_cidr_block     = "10.0.0.0/16"
  vpc_id                    = null
  vpc_log_retention         = 90
  source                    = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_base?ref=main"
}

output "kms_account_key_arn" {
  value = module.bpvc.kms_account_key_arn
}

output "kms_account_key_id" {
  value = module.bpvc.kms_account_key_id
}

output "private_subnet_ids" {
  value = module.bpvc.private_subnet_ids
}

output "public_nat_ips" {
  value = module.bpvc.public_nat_ips
}

output "public_subnets_ids" {
  value = module.bpvc.public_subnets_ids
}

output "s3_log_bucket_name" {
  value = module.bpvc.s3_log_bucket_name
}

output "vpc_id" {
  value = module.bpvc.vpc_id
}