
  module "redis"  {
    snapshot_retention_limit = 0
    snapshot_window = "04:00 05:00"
    env_name = "production-ap-northeast-3"
    layer_name = "production-ap-northeast-3"
    module_name = "redis"
    source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_redis?ref=main"
    node_type = "cache.m7g.large"
    redis_version = "6.2"
  }
