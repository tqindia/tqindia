
  module "helmchart"  {
    dependency_update = false
    source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/helm_chart?ref=main"
    namespace = "karpenter"
    create_namespace = true
    cleanup_on_fail = true
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
    release_name = "karpenter"
    repository = "oci://public.ecr.aws/karpenter/karpenter"
    chart_version = "0.37.0"
    max_history = 16
    wait_for_jobs = true
    atomic = true
    values_files = [
      
    ]
    timeout = 23
    wait = true
    env_name = "production-ap-northeast-3"
    layer_name = "production-ap-northeast-3"
    module_name = "helmchart"
  }
