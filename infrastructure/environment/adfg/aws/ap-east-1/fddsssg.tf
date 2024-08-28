module "fddsssg" {
  # Type of access entry, here defined as access for EC2 Linux instances
  access_entry_type = "EC2_LINUX"
  
  # List of ARNs for the Amazon Machine Image (AMI) IDs as SSM parameters
  ami_id_ssm_parameter_arns = []
  
  # IP family for the cluster; here set to IPv4
  cluster_ip_family = "ipv4"
  
  # Boolean flag to create an access entry
  create_access_entry = true
  
  # Boolean flag to create an IAM role
  create_iam_role = true
  
  # Boolean flag to create an instance profile
  create_instance_profile = false
  
  # Boolean flag to create a node IAM role
  create_node_iam_role = true
  
  # Boolean flag to create a pod identity association
  create_pod_identity_association = false
  
  # Boolean flag to enable IAM Roles for Service Accounts (IRSA)
  enable_irsa = false
  
  # Boolean flag to enable pod identity
  enable_pod_identity = true
  
  # Boolean flag to enable spot termination handling
  enable_spot_termination = true
  
  # Description of the IAM policy
  iam_policy_description = "Karpenter controller IAM policy"
  
  # Name of the IAM policy
  iam_policy_name = "KarpenterController"
  
  # Path for the IAM policy
  iam_policy_path = "/"
  
  # List of statements for the IAM policy
  iam_policy_statements = []
  
  # Boolean flag to use name prefix for IAM policy
  iam_policy_use_name_prefix = true
  
  # Description of the IAM role
  iam_role_description = "Karpenter controller IAM role"
  
  # Max session duration for the IAM role in seconds
  iam_role_max_session_duration = null
  
  # Name of the IAM role
  iam_role_name = "KarpenterController"
  
  # Path for the IAM role
  iam_role_path = "/"
  
  # ARN for the permissions boundary for the IAM role
  iam_role_permissions_boundary_arn = null
  
  # Policies to attach to the IAM role
  iam_role_policies = {}
  
  # Tags to attach to the IAM role
  iam_role_tags = {}
  
  # Boolean flag to use name prefix for IAM role
  iam_role_use_name_prefix = true
  
  # IRSA assume role condition test
  irsa_assume_role_condition_test = "StringEquals"
  
  # Namespace and service accounts for IRSA
  irsa_namespace_service_accounts = ["karpenter:karpenter"]
  
  # ARN of the OIDC provider for IRSA
  irsa_oidc_provider_arn = null
  
  # Namespace for the deployment
  namespace = "kube-system"
  
  # Additional policies to attach to the node IAM role
  node_iam_role_additional_policies = {}
  
  # ARN of the node IAM role
  node_iam_role_arn = null
  
  # Boolean flag to attach CNI policy to the node IAM role
  node_iam_role_attach_cni_policy = true
  
  # Description of the node IAM role
  node_iam_role_description = null
  
  # Max session duration for the node IAM role in seconds
  node_iam_role_max_session_duration = null
  
  # Name of the node IAM role
  node_iam_role_name = null
  
  # Path for the node IAM role
  node_iam_role_path = "/"
  
  # Permissions boundary for the node IAM role
  node_iam_role_permissions_boundary = null
  
  # Tags to attach to the node IAM role
  node_iam_role_tags = {}
  
  # Boolean flag to use name prefix for node IAM role
  node_iam_role_use_name_prefix = true
  
  # KMS data key reuse period in seconds for the queue
  queue_kms_data_key_reuse_period_seconds = null
  
  # ID of the KMS master key for the queue
  queue_kms_master_key_id = null
  
  # Boolean flag to enable managed SSE for the queue
  queue_managed_sse_enabled = true
  
  # Name of the queue
  queue_name = null
  
  # Prefix for the rule name
  rule_name_prefix = "Karpenter"
  
  # Name of service account
  service_account = "karpenter"
  
  # Source URL for the module
  source = "git::jh?ref=v20.22.0"
  
  # Environment name
  env_name = "adfg-ap-east-1"
  
  # Layer name
  layer_name = "adfg-ap-east-1"
  
  # Module name
  module_name = "fddsssg"
}