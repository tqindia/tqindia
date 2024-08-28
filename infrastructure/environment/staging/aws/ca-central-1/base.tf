module "base" {
  # Private IPv4 CIDR blocks for the VPC
  private_ipv4_cidr_blocks = ["10.0.128.0/21", "10.0.136.0/21", "10.0.144.0/21"]

  # Public IPv4 CIDR blocks for the VPC
  public_ipv4_cidr_blocks = ["10.0.0.0/21", "10.0.8.0/21", "10.0.16.0/21"]

  # Total IPv4 CIDR block for the VPC
  total_ipv4_cidr_block = "10.0.0.0/16"

  # Log retention period in days for VPC flow logs
  vpc_log_retention = 90

  # Module source (update with actual source and reference)
  source = "git::undefined?ref=undefined"

  # Name of the environment
  env_name = "staging-ca-central-1"

  # Layer name for the infrastructure
  layer_name = "staging-ca-central-1"

  # Module name
  module_name = "base"
}