module "test" {
  # Controls whether resources are created
  create                      = true

  # Whether to create a security group
  create_security_group       = false

  # Map of endpoints to create
  endpoints                   = {}

  # Description of the security group
  security_group_description  = ""

  # List of security group IDs
  security_group_ids          = []

  # Name of the security group
  security_group_name         = ""

  # Prefix of the security group name
  security_group_name_prefix  = ""

  # Map of security group rules
  security_group_rules        = {}

  # Additional tags for the security group
  security_group_tags         = {}

  # List of subnet IDs
  subnet_ids                  = []

  # Additional tags to add to the resources
  tags                        = {}

  # Configuration for the timeout settings
  timeouts                    = {}

  # VPC ID to create the resources in
  vpc_id                      = ""

  # Source of the module
  source                      = "git::git@github.com:terraform-aws-modules/terraform-aws-vpc.git//modules/vpc-endpoints?ref=main"

  # Environment name
  env_name                    = "adfg-ap-east-1"

  # Layer name
  layer_name                  = "adfg-ap-east-1"

  # Module name
  module_name                 = "test"
}