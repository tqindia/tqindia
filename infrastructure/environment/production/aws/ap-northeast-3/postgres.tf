
  module "postgres"  {
    extra_security_groups_ids = [
      
    ]
    database_name = "airflow"
    instance_class = "db.t3.medium"
    env_name = "production-ap-northeast-3"
    safety = false
    existing_global_database_id = ""
    layer_name = "production-ap-northeast-3"
    module_name = "postgres"
    source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_postgres?ref=main"
    backup_retention_days = 1
    multi_az = false
    create_global_database = false
    restore_from_snapshot = ""
    engine_version = "17 Beta 1"
  }
