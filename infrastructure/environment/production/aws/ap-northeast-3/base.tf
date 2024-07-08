
  module "base"  {
    source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//module/aws_base"
    private_ipv4_cidr_blocks = [
      "10.0.128.0/21",
      "10.0.136.0/21",
      "10.0.144.0/21"
    ]
    public_ipv4_cidr_blocks = [
      "10.0.0.0/21",
      "10.0.8.0/21",
      "10.0.16.0/21"
    ]
    total_ipv4_cidr_block = "10.0.0.0/16"
    vpc_log_retention = 90
    env_name = "production-ap-northeast-3"
    layer_name = "production-ap-northeast-3"
    module_name = "base"
  }
