module "iamrole" {
  source = "git::undefined?ref=undefined"

  env_name    = "production-aws-us-east-2"  # The environment name
  layer_name  = "production-aws-us-east-2"  # The layer name
  module_name = "iamrole"                   # The module name

  kubernetes_trusts = {
    open_id_url  = module.k8scluster.k8s_openid_provider_url  # OpenID URL from the Kubernetes cluster module
    open_id_arn  = module.k8scluster.k8s_openid_provider_arn  # OpenID ARN from the Kubernetes cluster module
    service_name = "*"                                        # Service name, wildcard represents all services
    namespace    = "*"                                        # Namespace, wildcard represents all namespaces
  }
}