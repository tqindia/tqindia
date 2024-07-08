
  module "airflow"  {
    env_name = "production-ap-northeast-3"
    release_name = "airflow"
    create_namespace = true
    atomic = true
    cleanup_on_fail = true
    values_files = [
      []
    ]
    values = {
      postgresql = {
        enabled = false
      }
      redis = {
        enabled = false
      }
      statsd = {
        enabled = false
      }
      extraEnv = "- name: AIRFLOW__CORE__LOAD_EXAMPLES
  value: "true""
      flower = {
        enabled = false
      }
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
    }
    namespace = "airflow"
    dependency_update = true
    wait_for_jobs = false
    max_history = 25
    layer_name = "production-ap-northeast-3"
    source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/helm_chart?ref=main"
    repository = "https://airflow.apache.org"
    chart_version = "1.4.0"
    wait = true
    module_name = "airflow"
    timeout = null()
  }
