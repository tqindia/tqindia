module "dns" {
  # Flag indicating if DNS is delegated
  delegated    = false

  # Source of the module
  source       = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_dns?ref=main"

  # Environment name
  env_name     = "sagafsg-us-east-2"

  # Layer name
  layer_name   = "sagafsg-us-east-2"

  # Module name
  module_name  = "dns"

  # Domain name
  domain       = "fdsafds.com"
}