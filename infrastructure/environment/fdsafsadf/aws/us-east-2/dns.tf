module "dns" {
  delegated    = false
  source       = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_dns?ref=main"
  env_name     = "fdsafsadf-us-east-2"
  layer_name   = "fdsafsadf-us-east-2"
  module_name  = "dns"
  domain       = "dfasfasd.com"
}

# This module sets up AWS DNS based on the provided configuration.
# The module fetches its source code from the specified Git repository.
# - delegated: Whether the DNS module should be delegated.
# - source: Git repository URL containing the module source code.
# - env_name: Environment name for the DNS configuration.
# - layer_name: Layer name for the DNS configuration.
# - module_name: Name of the module.
# - domain: Domain name to set up DNS for.