module "db" {
  # The instance class for the RDS instance
  instance_class = "t3.extra"

  # Engine version for the RDS instance
  engine_version = ""

  # Boolean indicating if the RDS instance should be Multi-AZ
  multi_az = false

  # Safety flag, not linked to any known attribute (custom usage)
  safety = false

  # Number of days to retain backups
  backup_retention_days = 1

  # List of extra security group IDs to apply to the instances
  extra_security_groups_ids = []

  # Boolean indicating if a global database should be created
  create_global_database = false

  # Existing global database ID to associate with
  existing_global_database_id = ""

  # The name of the database to be created
  database_name = "flyte"

  # The snapshot to restore from, if any
  restore_from_snapshot = ""

  # Source of the module to use
  source = "git::undefined?ref=undefined"

  # Environment name
  env_name = "staging-ca-central-1"

  # Layer name in the infrastructure
  layer_name = "staging-ca-central-1"

  # Module name
  module_name = "db"
}