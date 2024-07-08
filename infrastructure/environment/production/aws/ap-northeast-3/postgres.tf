
  module "postgres"  {
    multi_az = false
    existing_global_database_id = ""
    instance_class = "db.t3.medium"
    safety = false
    database_name = "airflow"
    restore_from_snapshot = ""
    engine_version = "17 Beta 1"
    create_global_database = false
    env_name = "production-ap-northeast-3"
    module_name = "postgres"
    backup_retention_days = 1
    layer_name = "production-ap-northeast-3"
    source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_postgres?ref=main"
    extra_security_groups_ids = [
      
    ]
  }
