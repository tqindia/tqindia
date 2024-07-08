
  module "helmchart"  {
    release_name = "karpenter"
    wait_for_jobs = true
    version = "0.0.1"
    repository = "oci://public.ecr.aws/karpenter/karpenter"
    atomic = true
    cleanup_on_fail = true
    values_files = [
      
    ]
    timeout = 23
    source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/helm_chart"
    values "settings"  {
      clusterName = "${module.k8scluster.k8s_cluster_name}"
      interruptionQueue = "${module.k8scluster.k8s_cluster_name}"
    }
    values "controller" "resources"  {
      requests = {
        memory = "1Gi"
        cpu = 1
      }
      limits = {
        cpu = 1
        memory = "1Gi"
      }
    }
    max_history = 16
    env_name = "production-ap-northeast-3"
    layer_name = "production-ap-northeast-3"
    namespace = "karpenter"
    create_namespace = true
    chart_version = "0.37.0"
    dependency_update = false
    wait = true
    module_name = "helmchart"
  }
