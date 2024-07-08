
  module "airflow"  {
    chart_version = "1.4.0"
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
      flower = {
        enabled = false
      }
      extraEnv = "- name: AIRFLOW__CORE__LOAD_EXAMPLES
  value: "true""
      airflow "config"  {
        AIRFLOW__WEBSERVER__BASE_URL = "http://{module.dns.domain}"
      }
      ingress = {
        enabled = true
        web = {
          host = "{module.dns.domain}"
          annotations = {
            kubernetes.io/ingress.class = "nginx"
          }
          path = ""
        }
      }
    }
    dependency_update = true
    wait = true
    module_name = "airflow"
    create_namespace = true
    cleanup_on_fail = true
    values_files = [
      []
    ]
    max_history = 25
    env_name = "production-ap-northeast-3"
    release_name = "airflow"
    namespace = "airflow"
    wait_for_jobs = false
    source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/helm_chart?ref=main"
    repository = "https://airflow.apache.org"
    timeout = null()
    layer_name = "production-ap-northeast-3"
    atomic = true
  }
