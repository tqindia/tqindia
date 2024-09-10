module "k8scluster" {
  ami_type = "AL2_x86_64"

  control_plane_security_groups = []

  eks_log_retention = 7

  env_name = "dgdg-ap-south-1"

  k8s_version = "1.21"

  kms_account_key_arn = module.base.kms_account_key_id

  layer_name = "dgdg-ap-south-1"

  max_nodes = 5

  min_nodes = 3

  module_name = "k8scluster"

  node_disk_size = 20

  node_instance_type = "t3.medium"

  node_launch_template = {}

  private_subnet_ids = module.base.private_subnet_ids

  spot_instances = false

  vpc_id = module.base.vpc_id

  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_eks?ref=main"
}

output "k8s_ca_data" {
  value = module.k8scluster.k8s_ca_data
}

output "k8s_cluster_name" {
  value = module.k8scluster.k8s_cluster_name
}

output "k8s_endpoint" {
  value = module.k8scluster.k8s_endpoint
}

output "k8s_node_group_security_id" {
  value = module.k8scluster.k8s_node_group_security_id
}

output "k8s_openid_provider_arn" {
  value = module.k8scluster.k8s_openid_provider_arn
}

output "k8s_openid_provider_url" {
  value = module.k8scluster.k8s_openid_provider_url
}

output "k8s_version" {
  value = module.k8scluster.k8s_version
}