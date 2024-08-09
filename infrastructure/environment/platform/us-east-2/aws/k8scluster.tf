module "k8scluster" {
  # The Amazon Machine Image (AMI) type for the EKS cluster
  ami_type = "AL2_x86_64"

  # Name of the EKS cluster
  cluster_name = "platform-cluster"

  # Security groups for the control plane
  control_plane_security_groups = []

  # Retention period for EKS logs
  eks_log_retention = 60

  # Enable or disable metrics
  enable_metrics = false

  # Kubernetes version
  k8s_version = "1.26"

  # Maximum number of nodes in the cluster
  max_nodes = 5

  # Minimum number of nodes in the cluster
  min_nodes = 3

  # Module name
  module_name = "k8scluster"

  # Disk size for each node in GB
  node_disk_size = 500

  # Instance type for the nodes
  node_instance_type = "t3.xlarge"

  # Node launch template
  node_launch_template = {}

  # Use spot instances or not
  spot_instances = false

  # KMS account key ARN
  kms_account_key_arn = module.base.kms_account_key_arn

  # Private subnet IDs
  private_subnet_ids = module.base.private_subnet_ids

  # VPC ID
  vpc_id = module.base.vpc_id

  # GPU support
  GPU = false

  # Source of the module
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_eks?ref=main"

  # Environment name
  env_name = "platform-us-east-2"

  # Layer name
  layer_name = "platform-us-east-2"
}