
  module "helmchart"  {
    env_name = "production-ap-northeast-3"
    source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/helm_chart?ref=main"
    create_namespace = true
    wait = true
    wait_for_jobs = true
    max_history = 16
    repository = "oci://public.ecr.aws/karpenter/karpenter"
    cleanup_on_fail = true
    module_name = "helmchart"
    layer_name = "production-ap-northeast-3"
    release_name = "karpenter"
    atomic = true
    timeout = 23
    dependency_update = false
    namespace = "karpenter"
    chart_version = "0.37.0"
    values_files = [
      
    ]
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
  }
