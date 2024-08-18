module "base" {
  # Description: Private IPv4 CIDR blocks for the module.
  private_ipv4_cidr_blocks = ["10.0.128.0/21", "10.0.136.0/21", "10.0.144.0/21"]

  # Description: Public IPv4 CIDR blocks for the module.
  public_ipv4_cidr_blocks = ["10.0.0.0/21", "10.0.8.0/21", "10.0.16.0/21"]

  # Description: Total IPv4 CIDR block for the VPC.
  total_ipv4_cidr_block = "10.0.0.0/16"

  # Description: The number of days to retain VPC logs.
  vpc_log_retention = 90

  # Description: The source URL for the module.
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_base?ref=main"

  # Description: Environment name for the module.
  env_name = "mlops-us-east-2"

  # Description: Layer name for the module.
  layer_name = "mlops-us-east-2"

  # Description: Module name for the module.
  module_name = "base"
}