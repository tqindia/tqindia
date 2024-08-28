module "base" {
  # List of private IPv4 CIDR blocks for the VPC
  private_ipv4_cidr_blocks = ["10.0.128.0/21", "10.0.136.0/21", "10.0.144.0/21"]

  # List of public IPv4 CIDR blocks for the VPC
  public_ipv4_cidr_blocks = ["10.0.0.0/21", "10.0.8.0/21", "10.0.16.0/21"]

  # Overall IPv4 CIDR block for the VPC
  total_ipv4_cidr_block = "10.0.0.0/16"

  # Retention period for VPC logs
  vpc_log_retention = 90

  # Source of the module to be used
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_base?ref=main"

  # Environment name for the deployment
  env_name = "staging-ca-central-1"

  # Layer name for the deployment
  layer_name = "staging-ca-central-1"

  # Module name for identification
  module_name = "base"
}