module "db" {
  instance_class             = "t3.extra"             # Class of instance
  engine_version             = ""                     # Version of the database engine
  multi_az                   = false                  # Multi-AZ deployment
  safety                     = false                  # Safety flag for operations
  backup_retention_days      = 1                      # Number of days to retain backup
  extra_security_groups_ids  = []                     # Additional security groups
  create_global_database     = false                  # Whether to create a global database
  existing_global_database_id= ""                     # ID of an existing global database
  database_name              = "flyte"                # Name of the database
  restore_from_snapshot      = ""                     # Snapshot ID to restore from
  source                     = "git::undefined?ref=undefined" # Source module
  env_name                   = "adfg-ap-east-1"       # Environment name
  layer_name                 = "adfg-ap-east-1"       # Layer name
  module_name                = "db"                   # Module name
}