module "Staging" {
  # Amazon Machine Image (AMI) type for the EKS workers
  ami_type = "AL2_x86_64"

  # Name of the EKS cluster
  cluster_name = "staging-ap-south-1"

  # Security groups for the EKS control plane
  control_plane_security_groups = []

  # Log retention period for EKS logs in days
  eks_log_retention = 7

  # Enable or disable metrics collection
  enable_metrics = true

  # The environment name
  env_name = "staging-ap-south-1"

  # Kubernetes version for the EKS cluster
  k8s_version = "1.29"

  # KMS key ARN for encrypting secrets
  kms_account_key_arn = "${module.aws_base.kms_account_key_arn}"

  # Name of the layer
  layer_name = "staging-ap-south-1"

  # Maximum number of nodes in the EKS worker group
  max_nodes = 5

  # Minimum number of nodes in the EKS worker group
  min_nodes = 3

  # Name of the module
  module_name = "Staging"

  # Disk size for EKS worker nodes in GB
  node_disk_size = 20

  # Instance type for EKS worker nodes
  node_instance_type = "t3.medium"

  # Launch template for the EKS worker nodes
  node_launch_template = {}

  # Private subnet IDs in the VPC
  private_subnet_ids = "${module.aws_base.private_subnet_ids}"

  # Use spot instances for the EKS worker nodes
  spot_instances = true

  # VPC ID where the EKS cluster will be deployed
  vpc_id = "${module.aws_base.vpc_id}"

  # Source URL for the module
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_eks?ref=main"
}