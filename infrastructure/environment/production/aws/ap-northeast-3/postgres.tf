
  module "postgres"  {
    instance_class = "db.t3.medium"
    extra_security_groups_ids = [
      
    ]
    existing_global_database_id = ""
    restore_from_snapshot = ""
    backup_retention_days = 1
    env_name = "production-ap-northeast-3"
    engine_version = "17 Beta 1"
    multi_az = false
    create_global_database = false
    module_name = "postgres"
    source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_postgres?ref=main"
    safety = false
    database_name = "airflow"
    layer_name = "production-ap-northeast-3"
  }
