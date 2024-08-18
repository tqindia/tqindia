module "base" {
  # The CIDR blocks for private subnets within the VPC
  private_ipv4_cidr_blocks = ["10.0.128.0/21", "10.0.136.0/21", "10.0.144.0/21"]

  # The CIDR blocks for public subnets within the VPC
  public_ipv4_cidr_blocks = ["10.0.0.0/21", "10.0.8.0/21", "10.0.16.0/21"]

  # The overall CIDR block for the VPC
  total_ipv4_cidr_block = "10.0.0.0/16"

  # Number of days to retain VPC flow logs
  vpc_log_retention = 90

  # Source of the Terraform module
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_base?ref=main"

  # Environment name
  env_name = "production-us-east-2"

  # Layer name
  layer_name = "production"

  # Module name
  module_name = "base"
}