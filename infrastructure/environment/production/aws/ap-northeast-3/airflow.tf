
  module "airflow"  {
    chart_version = "1.4.0"
    wait_for_jobs = false
    max_history = 25
    source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/helm_chart?ref=main"
    cleanup_on_fail = true
    values_files = [
      []
    ]
    values = {
      workers = {
        replicas = 1
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
      redis = {
        enabled = false
      }
      flower = {
        enabled = false
      }
      extraEnv = "- name: AIRFLOW__CORE__LOAD_EXAMPLES
  value: "true""
      ingress = {
        enabled = true
        web = {
          annotations = {
            kubernetes.io/ingress.class = "nginx"
          }
          path = ""
          host = "{module.dns.domain}"
        }
      }
      postgresql = {
        enabled = false
      }
      statsd = {
        enabled = false
      }
      airflow "config"  {
        AIRFLOW__WEBSERVER__BASE_URL = "http://{module.dns.domain}"
      }
    }
    layer_name = "production-ap-northeast-3"
    namespace = "airflow"
    wait = true
    timeout = null()
    dependency_update = true
    env_name = "production-ap-northeast-3"
    module_name = "airflow"
    release_name = "airflow"
    repository = "https://airflow.apache.org"
    create_namespace = true
    atomic = true
  }
