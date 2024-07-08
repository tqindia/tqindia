
  module "helmchart"  {
    chart_version = "0.37.0"
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
    timeout = 23
    dependency_update = false
    wait = true
    atomic = true
    cleanup_on_fail = true
    values_files = [
      
    ]
    max_history = 16
    source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/helm_chart?ref=main"
    release_name = "karpenter"
    create_namespace = true
    layer_name = "production-ap-northeast-3"
    repository = "oci://public.ecr.aws/karpenter/karpenter"
    namespace = "karpenter"
    wait_for_jobs = true
    env_name = "production-ap-northeast-3"
    module_name = "helmchart"
  }
