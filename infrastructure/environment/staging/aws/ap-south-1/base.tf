module "base" {
  # Environment name for the infrastructure
  env_name = "staging-ap-south-1"

  # Layer name for the infrastructure
  layer_name = "staging-ap-south-1"

  # Module name reference
  module_name = "base"

  # Private IPv4 CIDR blocks for the VPC
  private_ipv4_cidr_blocks = ["10.0.128.0/21", "10.0.136.0/21", "10.0.144.0/21"]

  # Private Subnet IDs (set to null whilst the module creates them)
  private_subnet_ids = null

  # Public IPv4 CIDR blocks for the VPC
  public_ipv4_cidr_blocks = ["10.0.0.0/21", "10.0.8.0/21", "10.0.16.0/21"]

  # Public Subnet IDs (set to null whilst the module creates them)
  public_subnet_ids = null

  # Total IPv4 CIDR block for the VPC
  total_ipv4_cidr_block = "10.0.0.0/16"

  # VPC ID (set to null to create a new VPC)
  vpc_id = null

  # Log retention period for VPC logs
  vpc_log_retention = 90

  # Source of the Terraform module
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_base?ref=main"
}