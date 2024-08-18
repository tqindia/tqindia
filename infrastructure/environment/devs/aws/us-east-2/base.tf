module "base" {
  # VPC private CIDR blocks
  private_ipv4_cidr_blocks = ["10.0.128.0/21", "10.0.136.0/21", "10.0.144.0/21"]
  
  # VPC public CIDR blocks
  public_ipv4_cidr_blocks = ["10.0.0.0/21", "10.0.8.0/21", "10.0.16.0/21"]
  
  # Total CIDR block for VPC
  total_ipv4_cidr_block = "10.0.0.0/16"
  
  # Log retention period for VPC
  vpc_log_retention = 90
  
  # Source module for the base module
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_base?ref=main"

  # Environment name
  env_name = "devs-us-east-2"
  
  # Layer name
  layer_name = "devs-us-east-2"
  
  # Module name
  module_name = "base"
}