module "dns" {
  # Specifies whether the zone is delegated by default
  delegated = false

  # Source location of the module
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_dns?ref=main"

  # Environment name
  env_name = "staging-us-east-1"

  # Layer name
  layer_name = "staging-us-east-1"

  # Module name
  module_name = "dns"

  # Domain name for the DNS zone
  domain = "sgfsg.com"
}