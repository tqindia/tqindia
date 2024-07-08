
  module "postgres"  {
    engine_version = "17 Beta 1"
    database_name = "airflow"
    safety = false
    existing_global_database_id = ""
    restore_from_snapshot = ""
    module_name = "postgres"
    instance_class = "db.t3.medium"
    multi_az = false
    layer_name = "production-ap-northeast-3"
    source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_postgres?ref=main"
    extra_security_groups_ids = [
      
    ]
    env_name = "production-ap-northeast-3"
    backup_retention_days = 1
    create_global_database = false
  }
