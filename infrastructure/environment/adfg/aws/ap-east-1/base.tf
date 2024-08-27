module "base" {
  # Define the CIDR blocks for private IPv4 addresses
  private_ipv4_cidr_blocks = ["10.0.128.0/21", "10.0.136.0/21", "10.0.144.0/21"]

  # Define the CIDR blocks for public IPv4 addresses
  public_ipv4_cidr_blocks = ["10.0.0.0/21", "10.0.8.0/21", "10.0.16.0/21"]

  # Define the total CIDR block for the IPv4 network
  total_ipv4_cidr_block = "10.0.0.0/16"

  # Define retention period for VPC logs in days
  vpc_log_retention = 90

  # Define the source of the module
  source = "git::undefined?ref=undefined"

  # Define the environment name
  env_name = "adfg-ap-east-1"

  # Define the layer name
  layer_name = "adfg-ap-east-1"

  # Define the module name
  module_name = "base"
}