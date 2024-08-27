module "k8scluster" {
  # The AMI type to use for the EKS cluster nodes
  ami_type = "AL2_x86_64"

  # The name of the EKS cluster
  cluster_name = "test"

  # Security groups for the control plane
  control_plane_security_groups = []

  # Retention period for EKS logs in days
  eks_log_retention = 60

  # Flag to enable or disable metrics
  enable_metrics = false

  # The Kubernetes version for the EKS cluster
  k8s_version = "1.26"

  # The maximum number of nodes in the EKS cluster
  max_nodes = 5

  # The minimum number of nodes in the EKS cluster
  min_nodes = 5

  # The module name
  module_name = "k8scluster"

  # Disk size for the EKS nodes in GB
  node_disk_size = 50

  # Instance type for the EKS nodes
  node_instance_type = "db.t3.medium"

  # Launch template for the EKS nodes
  node_launch_template = {}

  # Flag to specify whether to use spot instances
  spot_instances = false

  # ARN of the KMS account key
  kms_account_key_arn = module.base.kms_account_key_arn

  # Private subnet IDs for the VPC
  private_subnet_ids = module.base.private_subnet_ids

  # VPC ID where the EKS cluster will be deployed
  vpc_id = module.base.vpc_id

  # Flag to specify whether to use GPU instances
  gpu = false

  # Source of the Terraform module
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_eks?ref=main"

  # Environment name
  env_name = "adfg-us-east-2"

  # Layer name
  layer_name = "adfg-us-east-2"
}