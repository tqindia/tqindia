module "vpc" {
  # The environment name for the VPC
  env_name = "adfg-ap-east-1"

  # Layer name for the VPC
  layer_name = "adfg-ap-east-1"

  # Module name
  module_name = "vpc"

  # Private IPv4 CIDR blocks
  private_ipv4_cidr_blocks = ["10.0.128.0/21", "10.0.136.0/21", "10.0.144.0/21"]

  # Private subnet IDs
  private_subnet_ids = ""

  # Public IPv4 CIDR blocks
  public_ipv4_cidr_blocks = ["10.0.0.0/21", "10.0.8.0/21", "10.0.16.0/21"]

  # Public subnet IDs
  public_subnet_ids = ""

  # Total IPv4 CIDR block for the VPC
  total_ipv4_cidr_block = "10.0.0.0/16"

  # VPC ID
  vpc_id = ""

  # VPC log retention in days
  vpc_log_retention = 90

  # Source of the module
  source = "git::https://kubernetes.github.io/autoscaler?ref=main"
}