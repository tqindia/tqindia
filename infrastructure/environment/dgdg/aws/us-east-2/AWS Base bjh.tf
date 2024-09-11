module "AWS_Base" {
  # Environment name
  env_name = "dgdg-us-east-2"

  # Layer name
  layer_name = "dgdg-us-east-2"

  # Module name
  module_name = "AWS Base"

  # CIDR blocks for the private subnets
  private_ipv4_cidr_blocks = ["10.0.128.0/21", "10.0.136.0/21", "10.0.144.0/21"]

  # List of private subnet IDs, null if not available
  private_subnet_ids = null

  # CIDR blocks for the public subnets
  public_ipv4_cidr_blocks = ["10.0.0.0/21", "10.0.8.0/21", "10.0.16.0/21"]

  # List of public subnet IDs, null if not available
  public_subnet_ids = null

  # The total CIDR block for the VPC
  total_ipv4_cidr_block = "10.0.0.0/16"

  # VPC ID, null if not available
  vpc_id = null

  # Retention period for VPC flow logs in days
  vpc_log_retention = 90

  # Source for the module
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_base?ref=main"
}

output = {}