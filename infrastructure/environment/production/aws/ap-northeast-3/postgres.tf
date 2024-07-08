
  module "postgres"  {
    create_global_database = false
    database_name = "airflow"
    source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_postgres?ref=main"
    safety = false
    existing_global_database_id = ""
    env_name = "production-ap-northeast-3"
    instance_class = "db.t3.medium"
    engine_version = "17 Beta 1"
    backup_retention_days = 1
    layer_name = "production-ap-northeast-3"
    multi_az = false
    extra_security_groups_ids = [
      
    ]
    restore_from_snapshot = ""
    module_name = "postgres"
  }
