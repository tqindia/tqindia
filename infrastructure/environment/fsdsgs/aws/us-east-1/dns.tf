module "dns" {
  delegated    = false
  source       = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_dns?ref=main"
  env_name     = "fsdsgs-us-east-1"
  layer_name   = "fsdsgs-us-east-1"
  module_name  = "dns"
  domain       = "sfdfgsdf.com"
}

# This module configures DNS settings for AWS using the dns module from the given repository.
# Parameters:
# - delegated: A boolean indicating whether DNS delegation is enabled.
# - source: The source URL to the Terraform module.
# - env_name: The environment name for the setup.
# - layer_name: The layer name used in the module.
# - module_name: The name of the module.
# - domain: The domain name to be managed by this DNS configuration.