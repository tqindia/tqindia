module "dns" {
  delegated    = false

  source       = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_dns?ref=main"

  env_name     = "devops-us-east-2"

  layer_name   = "devops-us-east-2"

  module_name  = "dns"

  domain       = "sdfgfds.ocm"
}

# This module configures DNS settings by using the AWS DNS module from the specified Git repository.
# The configuration specifies that the DNS is not delegated and uses the repository located at the given Git URL.
# The environment and layer names are both set to "devops-us-east-2" and the domain being used is "sdfgfds.ocm".