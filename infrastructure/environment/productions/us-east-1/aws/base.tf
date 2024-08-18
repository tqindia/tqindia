module "base" {
  # Private IPv4 CIDR Blocks for the VPC
  private_ipv4_cidr_blocks = ["10.0.128.0/21", "10.0.136.0/21", "10.0.144.0/21"]

  # Public IPv4 CIDR Blocks for the VPC
  public_ipv4_cidr_blocks = ["10.0.0.0/21", "10.0.8.0/21", "10.0.16.0/21"]

  # Total IPv4 CIDR Block for the VPC
  total_ipv4_cidr_block = "10.0.0.0/16"

  # Log Retention Period for VPC Logs
  vpc_log_retention = 90

  # Source Repository for the Module
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_base?ref=main"

  # Environment Name
  env_name = "production-us-east-1"

  # Layer Name
  layer_name = "production-us-east-1"

  # Module Name
  module_name = "base"
}