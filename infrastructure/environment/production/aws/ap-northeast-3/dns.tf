
  module "dns"  {
    source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_dns?ref=main"
    delegated = false
    env_name = "production-ap-northeast-3"
    layer_name = "production-ap-northeast-3"
    module_name = "dns"
    domain = "dsf.com"
  }
