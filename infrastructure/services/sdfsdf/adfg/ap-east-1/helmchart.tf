module "helmchart" {
  release_name       = "Airflow"
  repository         = "https://airflow.apache.org"
  namespace          = "Airflow"
  create_namespace   = true
  atomic             = true
  cleanup_on_fail    = true
  chart_version      = "8.9.0"
  values_files       = []

  values = {
    db = {
      username = "${module.mysql.db_user}"
      password = "${module.mysql.db_password}"
    }
  }

  timeout            = 23
  dependency_update  = false
  wait               = true
  wait_for_jobs      = true
  max_history        = 16
  source             = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_sns?ref=main"
  env_name           = "adfg-ap-east-1"
  layer_name         = "adfg-ap-east-1"
  module_name        = "helmchart"
}