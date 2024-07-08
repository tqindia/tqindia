
  module "redis"  {
    layer_name = "production-ap-northeast-3"
    module_name = "redis"
    source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_redis"
    redis_version = "6.2"
    snapshot_retention_limit = 0
    env_name = "production-ap-northeast-3"
    node_type = "cache.m7g.large"
    snapshot_window = "04:00 05:00"
    version = "0.0.1"
  }
