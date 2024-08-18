module "base" {
  # List of private IPv4 CIDR blocks
  private_ipv4_cidr_blocks = ["10.0.128.0/21", "10.0.136.0/21", "10.0.144.0/21"]

  # List of public IPv4 CIDR blocks
  public_ipv4_cidr_blocks = ["10.0.0.0/21", "10.0.8.0/21", "10.0.16.0/21"]

  # Total IPv4 CIDR block
  total_ipv4_cidr_block = "10.0.0.0/16"

  # Retention period for VPC logs
  vpc_log_retention = 90

  # Source URL of the module
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_base?ref=main"

  # Name of the environment
  env_name = "sagafsg-us-east-2"

  # Name of the layer
  layer_name = "sagafsg-us-east-2"

  # Name of the module
  module_name = "base"
}