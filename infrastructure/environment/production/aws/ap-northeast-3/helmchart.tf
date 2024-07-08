
  module "helmchart"  {
    repository = "oci://public.ecr.aws/karpenter/karpenter"
    max_history = 16
    env_name = "production-ap-northeast-3"
    values_files = [
      
    ]
    dependency_update = false
    wait_for_jobs = true
    layer_name = "production-ap-northeast-3"
    release_name = "karpenter"
    create_namespace = true
    cleanup_on_fail = true
    chart_version = "0.37.0"
    module_name = "helmchart"
    source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/helm_chart?ref=main"
    wait = true
    namespace = "karpenter"
    atomic = true
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
    timeout = 23
  }
