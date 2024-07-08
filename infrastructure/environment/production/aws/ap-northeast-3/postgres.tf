
  module "postgres"  {
    multi_az = false
    extra_security_groups_ids = [
      
    ]
    env_name = "production-ap-northeast-3"
    safety = false
    create_global_database = false
    existing_global_database_id = ""
    source = "tqindia/cops/cloud//module/aws_postgres"
    module_name = "postgres"
    restore_from_snapshot = ""
    layer_name = "production-ap-northeast-3"
    version = "0.0.1"
    instance_class = "db.t3.medium"
    engine_version = "17 Beta 1"
    backup_retention_days = 1
    database_name = "airflow"
  }
