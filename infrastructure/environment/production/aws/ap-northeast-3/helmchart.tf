
  module "helmchart"  {
    cleanup_on_fail = true
    chart_version = "0.37.0"
    wait_for_jobs = true
    max_history = 16
    module_name = "helmchart"
    source = "tqindia/cops/cloud//module/helm_chart"
    version = "0.0.1"
    atomic = true
    namespace = "karpenter"
    create_namespace = true
    dependency_update = false
    release_name = "karpenter"
    layer_name = "production-ap-northeast-3"
    values "controller" "resources"  {
      requests = {
        cpu = 1
        memory = "1Gi"
      }
      limits = {
        cpu = 1
        memory = "1Gi"
      }
    }
    values "settings"  {
      clusterName = "${module.k8scluster.k8s_cluster_name}"
      interruptionQueue = "${module.k8scluster.k8s_cluster_name}"
    }
    values_files = [
      
    ]
    timeout = 23
    wait = true
    env_name = "production-ap-northeast-3"
    repository = "oci://public.ecr.aws/karpenter/karpenter"
  }
