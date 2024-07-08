
  module "helmchart"  {
    wait_for_jobs = true
    cleanup_on_fail = true
    values_files = [
      
    ]
    wait = true
    source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/helm_chart?ref=main"
    namespace = "karpenter"
    create_namespace = true
    dependency_update = false
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
    max_history = 16
    layer_name = "production-ap-northeast-3"
    release_name = "karpenter"
    repository = "oci://public.ecr.aws/karpenter/karpenter"
    atomic = true
    chart_version = "0.37.0"
    env_name = "production-ap-northeast-3"
    module_name = "helmchart"
  }
