module "dns" {
  delegated    = false
  source       = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_dns?ref=main"
  env_name     = "staging-us-east-1"
  layer_name   = "staging-us-east-1"
  module_name  = "dns"
  domain       = "asfasdf.com"
}

# Module for DNS configuration
# 
# Arguments:
# delegated  - (Optional) Boolean to indicate if the DNS zone should be delegated. Default is false.
# source     - (Required) The source location of the module.
# env_name   - (Required) The environment name.
# layer_name - (Required) The layer name.
# module_name- (Required) The name of the module.
# domain     - (Required) The domain name for the DNS.