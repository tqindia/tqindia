module "Staging" {
  # Amazon Machine Image (AMI) type
  ami_type = "AL2_x86_64"

  # EKS cluster name
  cluster_name = "staging-ap-south-1"

  # Control plane security groups
  control_plane_security_groups = []

  # Log retention in days
  eks_log_retention = 7

  # Enable CloudWatch metrics
  enable_metrics = true

  # Environment name
  env_name = "staging-ap-south-1"

  # Kubernetes version
  k8s_version = "1.29"

  # KMS (Key Management Service) account key ARN (Amazon Resource Name)
  kms_account_key_arn = module.aws_base.kms_account_key_arn

  # Layer name
  layer_name = "staging-ap-south-1"

  # Maximum number of nodes
  max_nodes = 5

  # Minimum number of nodes
  min_nodes = 3

  # Module name
  module_name = "Staging"

  # Node disk size in GB
  node_disk_size = 20

  # EC2 instance type for nodes
  node_instance_type = "t3.medium"

  # Node launch template (can be an empty map for default settings)
  node_launch_template = {}

  # Private subnet IDs (referenced from another module)
  private_subnet_ids = module.aws_base.private_subnet_ids

  # Use spot instances
  spot_instances = false

  # VPC ID (referenced from another module)
  vpc_id = module.aws_base.vpc_id

  # Module source path
  source = "git::https//github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_eks?ref=main"
}

output "k8s_ca_data" {
  value = module.Staging.k8s_ca_data
}

output "k8s_cluster_name" {
  value = module.Staging.k8s_cluster_name
}

output "k8s_endpoint" {
  value = module.Staging.k8s_endpoint
}

output "k8s_node_group_security_id" {
  value = module.Staging.k8s_node_group_security_id
}

output "k8s_openid_provider_arn" {
  value = module.Staging.k8s_openid_provider_arn
}

output "k8s_openid_provider_url" {
  value = module.Staging.k8s_openid_provider_url
}

output "k8s_version" {
  value = module.Staging.k8s_version
}