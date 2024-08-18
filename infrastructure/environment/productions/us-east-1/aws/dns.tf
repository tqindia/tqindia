module "dns" {
  # Indicates if DNS should be delegated
  delegated    = false

  # Source of the DNS module, including a specific reference
  source       = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_dns?ref=main"

  # Environment name for the DNS configuration
  env_name     = "productions-us-east-1"

  # Layer name for the DNS module
  layer_name   = "productions-us-east-1"

  # Module name for identification
  module_name  = "dns"

  # Domain name for the DNS configuration
  domain_name  = "sdgdsf.cos"
}