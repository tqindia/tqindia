
  module "helmchart"  {
    wait_for_jobs = true
    layer_name = "production-ap-northeast-3"
    repository = "oci://public.ecr.aws/karpenter/karpenter"
    values "settings"  {
      clusterName = "${module.k8scluster.k8s_cluster_name}"
      interruptionQueue = "${module.k8scluster.k8s_cluster_name}"
    }
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
    wait = true
    values_files = [
      
    ]
    timeout = 23
    max_history = 16
    source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/helm_chart?ref=main"
    release_name = "karpenter"
    namespace = "karpenter"
    create_namespace = true
    dependency_update = false
    module_name = "helmchart"
    env_name = "production-ap-northeast-3"
    atomic = true
    cleanup_on_fail = true
    chart_version = "0.37.0"
  }
