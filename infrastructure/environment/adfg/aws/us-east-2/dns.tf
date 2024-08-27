module "dns" {
  delegated    = false

  source       = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_dns?ref=main"

  env_name     = "adfg-us-east-2"
  layer_name   = "adfg-us-east-2"
  module_name  = "dns"
  domain       = "fsdaf.com"
}

# Module Configuration to Set Up DNS in AWS
# delegated: Flag to indicate if the DNS zone is delegated
# source: The source of the module, in this case a Git repository URL
# env_name: Environment name
# layer_name: Layer name
# module_name: Name of the module
# domain: The domain for which the DNS will be set up