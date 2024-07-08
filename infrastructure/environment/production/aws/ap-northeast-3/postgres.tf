
  module "postgres"  {
    instance_class = "db.t3.medium"
    create_global_database = false
    existing_global_database_id = ""
    restore_from_snapshot = ""
    multi_az = false
    backup_retention_days = 1
    layer_name = "production-ap-northeast-3"
    module_name = "postgres"
    engine_version = "17 Beta 1"
    safety = false
    env_name = "production-ap-northeast-3"
    extra_security_groups_ids = [
      
    ]
    database_name = "airflow"
    source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_postgres?ref=main"
  }
