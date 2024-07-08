
  module "helmchart"  {
    wait = true
    wait_for_jobs = true
    cleanup_on_fail = true
    values_files = [
      
    ]
    source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/helm_chart?ref=main"
    namespace = "karpenter"
    chart_version = "0.37.0"
    timeout = 23
    layer_name = "production-ap-northeast-3"
    module_name = "helmchart"
    release_name = "karpenter"
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
    dependency_update = false
    max_history = 16
    env_name = "production-ap-northeast-3"
    create_namespace = true
    atomic = true
  }
