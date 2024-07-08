
  module "postgres"  {
    multi_az = false
    safety = false
    existing_global_database_id = ""
    source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_postgres?ref=main"
    layer_name = "production-ap-northeast-3"
    instance_class = "db.t3.medium"
    engine_version = "17 Beta 1"
    backup_retention_days = 1
    create_global_database = false
    restore_from_snapshot = ""
    extra_security_groups_ids = [
      
    ]
    database_name = "airflow"
    env_name = "production-ap-northeast-3"
    module_name = "postgres"
  }
