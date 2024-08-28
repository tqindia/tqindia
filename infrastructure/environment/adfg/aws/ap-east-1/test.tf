module "vpc_endpoint" {
  # Whether to create the VPC endpoint
  create = true

  # Option to create a security group for the VPC endpoint
  create_security_group = false

  # Map of VPC endpoint configurations
  endpoints = {}

  # Description for the security group (if create_security_group is true)
  security_group_description = ""

  # List of security group IDs (if create_security_group is false)
  security_group_ids = []

  # Name of the security group (if create_security_group is true)
  security_group_name = ""

  # Prefix for the security group name (if create_security_group is true)
  security_group_name_prefix = ""

  # Rules for the security group (if create_security_group is true)
  security_group_rules = {}

  # Tags for the security group (if create_security_group is true)
  security_group_tags = {}

  # List of subnet IDs where the VPC endpoints should be created
  subnet_ids = []

  # Tags for the VPC endpoints
  tags = {}

  # Timeouts for creating or deleting the VPC endpoints
  timeouts = {}

  # VPC ID where the endpoints should be created
  vpc_id = module.base.vpc_id

  # Source for the module code
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_base?ref=main"

  # Environment name
  env_name = "adfg-ap-east-1"

  # Layer name
  layer_name = "adfg-ap-east-1"

  # Module name
  module_name = "Vpc Endpoint"
}