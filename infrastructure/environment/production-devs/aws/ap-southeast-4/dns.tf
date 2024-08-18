module "dns" {
  delegated    = false
  source       = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_dns?ref=main"
  env_name     = "production-devs-ap-southeast-4"
  layer_name   = "production-devs-ap-southeast-4"
  module_name  = "dns"
  domain       = "gdgfd.com"
}

# This module configures DNS settings for the specified domain in AWS.
# - delegated: Boolean indicating whether the domain is delegated or not.
# - source: The source of the Terraform module in the git repository.
# - env_name: The environment name for the DNS settings.
# - layer_name: The layer name for the DNS settings.
# - module_name: The name of the module.
# - domain: The domain that will be configured for DNS settings.