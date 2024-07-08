
  module "airflow"  {
    cleanup_on_fail = true
    release_name = "airflow"
    namespace = "airflow"
    create_namespace = true
    chart_version = "1.4.0"
    wait = true
    max_history = 25
    source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/helm_chart"
    version = "0.0.1"
    repository = "https://airflow.apache.org"
    wait_for_jobs = false
    env_name = "production-ap-northeast-3"
    module_name = "airflow"
    atomic = true
    values = {
      airflow "config"  {
        AIRFLOW__WEBSERVER__BASE_URL = "http://{module.dns.domain}"
      }
      redis = {
        enabled = false
      }
      statsd = {
        enabled = false
      }
      extraEnv = "- name: AIRFLOW__CORE__LOAD_EXAMPLES
  value: "true""
      workers = {
        replicas = 1
      }
      postgresql = {
        enabled = false
      }
      flower = {
        enabled = false
      }
      data = {
        brokerUrl = "rediss://:${{module.redis.cache_auth_token}}@${{module.redis.cache_host}}"
        metadataConnection = {
          host = "${{module.db.db_host}}"
          db = "${{module.db.db_name}}"
          user = "${{module.db.db_user}}"
          pass = "${{module.db.db_password}}"
        }
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
    }
    timeout = null()
    dependency_update = true
    layer_name = "production-ap-northeast-3"
    values_files = [
      []
    ]
  }
