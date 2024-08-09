module "karpenter" {
  access_entry_type                      = "EC2_LINUX"
  cluster_ip_family                      = "ipv4"
  cluster_name                           = "platform-cluster"
  create                                 = true
  create_access_entry                    = true
  create_iam_role                        = true
  create_instance_profile                = true
  create_node_iam_role                   = true
  create_pod_identity_association        = true
  enable_pod_identity                    = true
  enable_spot_termination                = true
  iam_policy_description                 = "Karpenter controller IAM policy"
  iam_policy_name                        = "KarpenterController"
  iam_policy_path                        = "/"
  iam_policy_use_name_prefix             = true
  iam_role_description                   = "Karpenter controller IAM role"
  iam_role_name                          = "KarpenterController"
  iam_role_path                          = "/"
  iam_role_use_name_prefix               = true
  irsa_assume_role_condition_test        = "StringEquals"
  irsa_namespace_service_accounts        = ["karpenter:karpenter"]
  namespace                              = "kube-system"
  node_iam_role_attach_cni_policy        = true
  node_iam_role_path                     = "/"
  node_iam_role_use_name_prefix          = true
  queue_managed_sse_enabled              = true
  rule_name_prefix                       = "Karpenter"
  service_account                        = "karpenter"
  source                                 = "git::https://github.com/terraform-aws-modules/terraform-aws-eks.git//modules/karpenter?ref=v20.22.0"
}