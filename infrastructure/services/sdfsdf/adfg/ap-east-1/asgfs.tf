module "asgfs" {
  node_type               = "cache.m7g.large"
  redis_version           = "6.2"
  snapshot_retention_limit = 0
  snapshot_window         = "04:00-05:00"
  source                  = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_redis?ref=main"
  env_name                = "adfg-ap-east-1"
  layer_name              = "adfg-ap-east-1"
  module_name             = "asgfs"
}

# This module configuration sets up an AWS ElastiCache Redis cluster with the following parameters:
# - node_type: The type of node to use for the Redis cluster (e.g., cache.m7g.large)
# - redis_version: The version of Redis to deploy (e.g., 6.2)
# - snapshot_retention_limit: The number of automatic snapshots to retain for backup purposes (0 means disabled)
# - snapshot_window: The daily time range during which ElastiCache will create a snapshot backup (24-hour format)
# - source: The source of the Terraform module, specified as a Git URL with a reference to a specific version
# - env_name: The name of the environment where the Redis cluster will be deployed
# - layer_name: The logical layer or service name within the environment
# - module_name: The name of the module instance for identification purposes