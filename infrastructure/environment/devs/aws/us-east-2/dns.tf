module "dns" {
  delegated     = false
  source        = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_dns?ref=main"
  env_name      = "devs-us-east-2"
  layer_name    = "devs-us-east-2"
  module_name   = "dns"
  domain        = "comgf.com"
}

# The 'dns' module configuration
# delegated: Whether the DNS zone is delegated.
# source: Location of the module source code.
# env_name: Name of the environment.
# layer_name: Name of the layer.
# module_name: Name of the module.
# domain: Domain name for the DNS zone.