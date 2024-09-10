module "aws_base" {
  env_name                    = "dgdg-ap-south-1"
  layer_name                  = "dgdg-ap-south-1"
  module_name                 = "AWS Base"
  private_ipv4_cidr_blocks    = ["10.0.128.0/21", "10.0.136.0/21", "10.0.144.0/21"]
  private_subnet_ids          = null
  public_ipv4_cidr_blocks     = ["10.0.0.0/21", "10.0.8.0/21", "10.0.16.0/21"]
  public_subnet_ids           = null
  total_ipv4_cidr_block       = "10.0.0.0/16"
  vpc_id                      = null
  vpc_log_retention           = 90
  source                      = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_base?ref=main"
}

output "example_output" {
  value = "This is an example output"
}

# Documentation:
# - module "aws_base":
#   - env_name: Name of the environment.
#   - layer_name: Name of the layer being deployed.
#   - module_name: Name of the module.
#   - private_ipv4_cidr_blocks: List of private CIDR blocks.
#   - private_subnet_ids: List of private subnet IDs.
#   - public_ipv4_cidr_blocks: List of public CIDR blocks.
#   - public_subnet_ids: List of public subnet IDs.
#   - total_ipv4_cidr_block: Total CIDR block for the VPC.
#   - vpc_id: VPC ID.
#   - vpc_log_retention: Number of days to retain the VPC logs.
#   - source: Source repository for the module.
# - output "example_output":
#   - value: Example output value.