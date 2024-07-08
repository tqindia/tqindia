
  module "redis"  {
    snapshot_window = "04:00 05:00"
    env_name = "production-ap-northeast-3"
    node_type = "cache.m7g.large"
    redis_version = "6.2"
    snapshot_retention_limit = 0
    layer_name = "production-ap-northeast-3"
    module_name = "redis"
    source = "tqindia/cops/cloud//module/aws_redis"
    version = "0.0.1"
  }
