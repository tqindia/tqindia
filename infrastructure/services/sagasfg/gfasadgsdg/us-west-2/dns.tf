module "dns" {
  delegated    = false
  source       = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_dns?ref=main"
  env_name     = "gfasadgsdg-us-west-2"
  layer_name   = "gfasadgsdg-us-west-2"
  module_name  = "dns"
  domain       = "asdfsadf.com"
}

# This Terraform module configuration sets up a DNS service on AWS.
# - delegated: Indicates if DNS delegation is enabled (false means no delegation).
# - source: URL of the git repository where the module is stored.
# - env_name: Environment name, typically representing AWS region.
# - layer_name: The layer of infrastructure within the environment.
# - module_name: The name of the module being used.
# - domain: The domain name to be managed by this DNS setup.