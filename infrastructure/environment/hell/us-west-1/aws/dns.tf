# Module configuration for AWS DNS
# delegated:    Specifies whether the DNS is delegated
# source:       URI of the source module
# env_name:     Name of the environment
# layer_name:   Layer name of the deployment
# module_name:  Name of the module
# domain:       Domain for DNS configuration

module "dns" {
  delegated    = false
  source       = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_dns?ref=main"
  env_name     = "hell-us-west-1"
  layer_name   = "hell-us-west-1"
  module_name  = "dns"
  domain       = "dfsafdsfsd.com"
}