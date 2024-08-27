module "mysql" {
  source                = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_mysql?ref=main"
  instance_class        = "db.t3.medium"
  engine_version        = "8.0.36"
  multi_az              = false
  backup_retention_days = 7
  safety                = false
  db_name               = "app"
  env_name              = "adfg-ap-east-1"
  layer_name            = "adfg-ap-east-1"
  module_name           = "mysql"
}

# This module provisions an AWS MySQL RDS instance using the configuration supplied.

# Parameters:
# - source: The source URL for the Terrafrom module.
# - instance_class: The instance type (e.g., db.t3.medium).
# - engine_version: Version of the MySQL engine to use.
# - multi_az: Whether to deploy a Multi-AZ RDS instance (true/false).
# - backup_retention_days: Number of days to retain backups.
# - safety: Additional safety parameters (usually customized within the module).
# - db_name: The name of the initial database to create.
# - env_name: The environment name, typically used for naming or tagging.
# - layer_name: The layer name, typically used for naming or tagging.
# - module_name: The module name, used within the context of this module.