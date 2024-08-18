module "base" {
  # CIDR blocks for private subnets
  private_ipv4_cidr_blocks = ["10.0.128.0/21", "10.0.136.0/21", "10.0.144.0/21"]

  # CIDR blocks for public subnets
  public_ipv4_cidr_blocks = ["10.0.0.0/21", "10.0.8.0/21", "10.0.16.0/21"]

  # Total VPC CIDR block
  total_ipv4_cidr_block = "10.0.0.0/16"

  # Log retention duration in days
  vpc_log_retention = 90

  # Source of the module
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_base?ref=main"

  # Environment name
  env_name = "staging-us-east-2"

  # Layer name
  layer_name = "staging-us-east-2"

  # Module name
  module_name = "base"
}