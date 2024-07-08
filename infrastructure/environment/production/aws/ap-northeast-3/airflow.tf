
  module "airflow"  {
    cleanup_on_fail = true
    max_history = 25
    env_name = "production-ap-northeast-3"
    chart_version = "1.4.0"
    values_files = [
      []
    ]
    wait = true
    wait_for_jobs = false
    layer_name = "production-ap-northeast-3"
    release_name = "airflow"
    create_namespace = true
    values = {
      postgresql = {
        enabled = false
      }
      statsd = {
        enabled = false
      }
      workers = {
        replicas = 1
      }
      data = {
        metadataConnection = {
          user = "${{module.db.db_user}}"
          pass = "${{module.db.db_password}}"
          host = "${{module.db.db_host}}"
          db = "${{module.db.db_name}}"
        }
        brokerUrl = "rediss://:${{module.redis.cache_auth_token}}@${{module.redis.cache_host}}"
      }
      airflow "config"  {
        AIRFLOW__WEBSERVER__BASE_URL = "http://{module.dns.domain}"
      }
      ingress = {
        enabled = true
        web = {
          path = ""
          host = "{module.dns.domain}"
          annotations = {
            kubernetes.io/ingress.class = "nginx"
          }
        }
      }
      redis = {
        enabled = false
      }
      flower = {
        enabled = false
      }
      extraEnv = "- name: AIRFLOW__CORE__LOAD_EXAMPLES
  value: "true""
    }
    timeout = null()
    dependency_update = true
    repository = "https://airflow.apache.org"
    namespace = "airflow"
    atomic = true
    module_name = "airflow"
    source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/helm_chart?ref=main"
  }
