
  module "airflow"  {
    create_namespace = true
    dependency_update = true
    repository = "https://airflow.apache.org"
    cleanup_on_fail = true
    chart_version = "1.4.0"
    values_files = [
      []
    ]
    timeout = null()
    wait = true
    version = "0.0.1"
    release_name = "airflow"
    atomic = true
    values = {
      redis = {
        enabled = false
      }
      data = {
        metadataConnection = {
          host = "${{module.db.db_host}}"
          db = "${{module.db.db_name}}"
          user = "${{module.db.db_user}}"
          pass = "${{module.db.db_password}}"
        }
        brokerUrl = "rediss://:${{module.redis.cache_auth_token}}@${{module.redis.cache_host}}"
      }
      flower = {
        enabled = false
      }
      extraEnv = "- name: AIRFLOW__CORE__LOAD_EXAMPLES
  value: "true""
      workers = {
        replicas = 1
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
      statsd = {
        enabled = false
      }
    }
    wait_for_jobs = false
    env_name = "production-ap-northeast-3"
    layer_name = "production-ap-northeast-3"
    source = "tqindia/cops/cloud//module/helm_chart"
    namespace = "airflow"
    max_history = 25
    module_name = "airflow"
  }
