module "k8scluster" {
  # The Amazon Machine Image (AMI) type for the cluster nodes
  ami_type = "AL2_x86_64"

  # Name of the EKS cluster
  cluster_name = "platform-cluster"

  # Security groups for the EKS control plane
  control_plane_security_groups = []

  # Log retention period for EKS logs in days
  eks_log_retention = 60

  # Enable or disable metrics
  enable_metrics = false

  # Kubernetes version for the EKS cluster
  k8s_version = "1.26"

  # Maximum number of nodes in the node group
  max_nodes = 5

  # Minimum number of nodes in the node group
  min_nodes = 3

  # Name of the module
  module_name = "k8scluster"

  # Disk size for the nodes
  node_disk_size = 500

  # Instance type for the nodes
  node_instance_type = "t3.xlarge"

  # Launch template for the nodes (if any)
  node_launch_template = {}

  # Use spot instances or not
  spot_instances = false

  # AWS KMS Key ARN for encryption
  kms_account_key_arn = module.base.kms_account_key_arn

  # Private subnet IDs for the VPC
  private_subnet_ids = module.base.private_subnet_ids

  # VPC ID where the EKS cluster will be launched
  vpc_id = module.base.vpc_id

  # Use GPU-enabled instances or not
  GPU = false

  # Source of the Terraform module
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_eks?ref=main"

  # Environment name
  env_name = "platform-us-east-2"

  # Layer name
  layer_name = "platform-us-east-2"
}