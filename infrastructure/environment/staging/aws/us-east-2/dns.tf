module "dns" {
  delegated     = false
  source        = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_dns?ref=main"
  env_name      = "staging-us-east-2"
  layer_name    = "staging-us-east-2"
  module_name   = "dns"
  domain        = "dgh.com"
}

# This module sets up DNS using the AWS provider. Ensure you have permissions configured correctly for AWS.
# - delegated: Indicates if DNS delegation is enabled.
# - source: The module source to pull the DNS configuration from.
# - env_name: The environment name the DNS is associated with.
# - layer_name: The terraforming layer name.
# - module_name: The name of the module.
# - domain: The domain name to configure.