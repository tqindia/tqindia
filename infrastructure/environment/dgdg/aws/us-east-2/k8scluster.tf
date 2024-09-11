module "k8scluster" {
  # The AMI type for the EKS nodes
  ami_type = "AL2_x86_64"

  # Security groups to attach to the control plane
  control_plane_security_groups = []

  # Log retention in days
  eks_log_retention = 7

  # Environment name
  env_name = "dgdg-us-east-2"

  # Kubernetes version
  k8s_version = "1.21"

  # Layer name
  layer_name = "dgdg-us-east-2"

  # Maximum number of nodes in the cluster
  max_nodes = 5

  # Minimum number of nodes in the cluster
  min_nodes = 3

  # Module name reference
  module_name = "k8scluster"

  # Disk size for the nodes (GB)
  node_disk_size = 20

  # Instance type for the nodes
  node_instance_type = "t3.medium"

  # Launch template for the nodes
  node_launch_template = {}

  # Whether to use spot instances
  spot_instances = false

  # Source of the module
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