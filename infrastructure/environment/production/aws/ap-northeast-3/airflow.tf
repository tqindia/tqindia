
  module "airflow"  {
    namespace = "airflow"
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
      workers = {
        replicas = 1
      }
      data = {
        metadataConnection = {
          pass = "${{module.db.db_password}}"
          host = "${{module.db.db_host}}"
          db = "${{module.db.db_name}}"
          user = "${{module.db.db_user}}"
        }
        brokerUrl = "rediss://:${{module.redis.cache_auth_token}}@${{module.redis.cache_host}}"
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
      statsd = {
        enabled = false
      }
      flower = {
        enabled = false
      }
      extraEnv = "- name: AIRFLOW__CORE__LOAD_EXAMPLES
  value: "true""
      airflow "config"  {
        AIRFLOW__WEBSERVER__BASE_URL = "http://{module.dns.domain}"
      }
    }
    wait_for_jobs = false
    max_history = 25
    wait = true
    env_name = "production-ap-northeast-3"
    layer_name = "production-ap-northeast-3"
    release_name = "airflow"
    repository = "https://airflow.apache.org"
    create_namespace = true
    cleanup_on_fail = true
    chart_version = "1.4.0"
    timeout = null()
    source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/helm_chart?ref=main"
    atomic = true
    dependency_update = true
    module_name = "airflow"
  }
