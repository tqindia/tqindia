
  module "airflow"  {
    env_name = "production-ap-northeast-3"
    create_namespace = true
    atomic = true
    cleanup_on_fail = true
    values = {
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
      statsd = {
        enabled = false
      }
      flower = {
        enabled = false
      }
      extraEnv = "- name: AIRFLOW__CORE__LOAD_EXAMPLES
  value: "true""
      postgresql = {
        enabled = false
      }
      redis = {
        enabled = false
      }
    }
    wait_for_jobs = false
    max_history = 25
    namespace = "airflow"
    source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/helm_chart?ref=main"
    wait = true
    repository = "https://airflow.apache.org"
    chart_version = "1.4.0"
    values_files = [
      []
    ]
    timeout = null()
    dependency_update = true
    layer_name = "production-ap-northeast-3"
    module_name = "airflow"
    release_name = "airflow"
  }
