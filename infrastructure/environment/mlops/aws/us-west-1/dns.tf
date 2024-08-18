module "dns" {
  delegated   = false

  source      = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_dns?ref=main"
  
  env_name    = "mlops-us-west-1"

  layer_name  = "mlops-us-west-1"

  module_name = "dns"

  domain      = "sdfas.com"
}

# Documentation:
# This Terraform module sets up DNS using a module from a remote Git repository.
# - delegated: Boolean to indicate if the DNS is delegated.
# - source: The URL of the Git repository where the module resides.
# - env_name: The environment name for the DNS setup.
# - layer_name: The layer name for the DNS setup.
# - module_name: The name of the DNS module.
# - domain: The domain name to be managed by this DNS setup.