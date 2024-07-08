
  module "airflow"  {
    repository = "https://airflow.apache.org"
    cleanup_on_fail = true
    chart_version = "1.4.0"
    wait = true
    env_name = "production-ap-northeast-3"
    module_name = "airflow"
    source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/helm_chart?ref=main"
    release_name = "airflow"
    namespace = "airflow"
    atomic = true
    values_files = [
      []
    ]
    timeout = null()
    create_namespace = true
    values = {
      redis = {
        enabled = false
      }
      statsd = {
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
      airflow "config"  {
        AIRFLOW__WEBSERVER__BASE_URL = "http://{module.dns.domain}"
      }
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
      flower = {
        enabled = false
      }
      extraEnv = "- name: AIRFLOW__CORE__LOAD_EXAMPLES
  value: "true""
      workers = {
        replicas = 1
      }
    }
    dependency_update = true
    wait_for_jobs = false
    max_history = 25
    layer_name = "production-ap-northeast-3"
  }
