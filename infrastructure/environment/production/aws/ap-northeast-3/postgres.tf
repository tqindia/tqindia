
  module "postgres"  {
    database_name = "airflow"
    module_name = "postgres"
    instance_class = "db.t3.medium"
    env_name = "production-ap-northeast-3"
    layer_name = "production-ap-northeast-3"
    engine_version = "17 Beta 1"
    multi_az = false
    safety = false
    backup_retention_days = 1
    extra_security_groups_ids = [
      
    ]
    create_global_database = false
    existing_global_database_id = ""
    restore_from_snapshot = ""
    source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_postgres?ref=main"
  }
