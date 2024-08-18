module "base" {
  # List of private IPv4 CIDR blocks to be used by the VPC
  private_ipv4_cidr_blocks = ["10.0.128.0/21", "10.0.136.0/21", "10.0.144.0/21"]

  # List of public IPv4 CIDR blocks to be used by the VPC
  public_ipv4_cidr_blocks = ["10.0.0.0/21", "10.0.8.0/21", "10.0.16.0/21"]

  # The total IPv4 CIDR block for the VPC
  total_ipv4_cidr_block = "10.0.0.0/16"

  # Log retention period for VPC logs in days
  vpc_log_retention = 90

  # Source URL of the base module
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_base?ref=main"

  # Environment name
  env_name = "gfasadgsdg-us-west-2"

  # Layer name
  layer_name = "gfasadgsdg-us-west-2"

  # Module name
  module_name = "base"
}