
  module "dns"  {
    module_name = "dns"
    domain = "dsf.com"
    source = "tqindia/cops/cloud//module/aws_dns"
    version = "0.0.1"
    delegated = false
    env_name = "production-ap-northeast-3"
    layer_name = "production-ap-northeast-3"
  }
