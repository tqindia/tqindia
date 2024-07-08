
  module "postgres"  {
    instance_class = "db.t3.medium"
    existing_global_database_id = ""
    database_name = "airflow"
    restore_from_snapshot = ""
    env_name = "production-ap-northeast-3"
    multi_az = false
    safety = false
    create_global_database = false
    layer_name = "production-ap-northeast-3"
    source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_postgres"
    version = "0.0.1"
    engine_version = "17 Beta 1"
    backup_retention_days = 1
    extra_security_groups_ids = [
      
    ]
    module_name = "postgres"
  }
