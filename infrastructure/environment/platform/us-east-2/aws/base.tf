module "base" {
  # Private IPv4 CIDR blocks for the VPC
  private_ipv4_cidr_blocks = ["10.0.128.0/21", "10.0.136.0/21", "10.0.144.0/21"]

  # Public IPv4 CIDR blocks for the VPC
  public_ipv4_cidr_blocks = ["10.0.0.0/21", "10.0.8.0/21", "10.0.16.0/21"]

  # Total IPv4 CIDR block for the VPC
  total_ipv4_cidr_block = "10.0.0.0/16"

  # Log retention period in days for VPC logs
  vpc_log_retention = 90

  # Source of the module to be used
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_base?ref=main"

  # Name of the environment
  env_name = "platform-us-east-2"

  # Name of the layer
  layer_name = "platform-us-east-2"

  # Name of the module
  module_name = "base"
}