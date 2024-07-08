
  module "airflow"  {
    create_namespace = true
    cleanup_on_fail = true
    layer_name = "production-ap-northeast-3"
    source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/helm_chart?ref=main"
    atomic = true
    chart_version = "1.4.0"
    dependency_update = true
    wait = true
    wait_for_jobs = false
    max_history = 25
    release_name = "airflow"
    repository = "https://airflow.apache.org"
    namespace = "airflow"
    timeout = null()
    values_files = [
      []
    ]
    values = {
      workers = {
        replicas = 1
      }
      data = {
        metadataConnection = {
          db = "${{module.db.db_name}}"
          user = "${{module.db.db_user}}"
          pass = "${{module.db.db_password}}"
          host = "${{module.db.db_host}}"
        }
        brokerUrl = "rediss://:${{module.redis.cache_auth_token}}@${{module.redis.cache_host}}"
      }
      airflow "config"  {
        AIRFLOW__WEBSERVER__BASE_URL = "http://{module.dns.domain}"
      }
      ingress = {
        web = {
          path = ""
          host = "{module.dns.domain}"
          annotations = {
            kubernetes.io/ingress.class = "nginx"
          }
        }
        enabled = true
      }
      postgresql = {
        enabled = false
      }
      redis = {
        enabled = false
      }
      statsd = {
        enabled = false
      }
      flower = {
        enabled = false
      }
      extraEnv = "- name: AIRFLOW__CORE__LOAD_EXAMPLES
  value: "true""
    }
    env_name = "production-ap-northeast-3"
    module_name = "airflow"
  }
