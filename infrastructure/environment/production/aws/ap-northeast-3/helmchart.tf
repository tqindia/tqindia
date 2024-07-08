
  module "helmchart"  {
    chart_version = "0.37.0"
    timeout = 23
    layer_name = "production-ap-northeast-3"
    repository = "oci://public.ecr.aws/karpenter/karpenter"
    cleanup_on_fail = true
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
    dependency_update = false
    wait_for_jobs = true
    max_history = 16
    module_name = "helmchart"
    source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/helm_chart?ref=main"
    env_name = "production-ap-northeast-3"
    release_name = "karpenter"
    namespace = "karpenter"
    create_namespace = true
    atomic = true
    values_files = [
      
    ]
    wait = true
  }
