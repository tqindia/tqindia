module "aws_auth" {
  # Define AWS IAM roles for EKS authentication with their corresponding groups, rolearn, and username.
  aws_auth_roles = [
    {
      groups   = ["system:bootstrappers", "system:nodes"]
      rolearn  = "arn:aws:iam::ACCOUNT_ID:role/platform-eks-default-node-group"
      username = "system:node:{{EC2PrivateDNSName}}"
    },
    {
      groups   = ["system:bootstrappers", "system:nodes"]
      rolearn  = "arn:aws:iam::ACCOUNT_ID:role/platform-eks-nodegroup1-node-group"
      username = "system:node:{{EC2PrivateDNSName}}"
    },
    {
      groups   = ["system:masters"]
      rolearn  = module.platform-cluster-role.role_arn
      username = "saas-managed"
    }
  ]

  aws_auth_users = [
    {
      groups   = ["system:masters"]
      userarn  = module.platform-cluster-role.role_arn
      username = "saas-managed"
    }
  ]

  # Configuration settings for the EKS aws-auth configmap.
  create                        = true
  create_aws_auth_configmap   = true
  manage_aws_auth_configmap   = true

  source = "git::https://github.com/terraform-aws-modules/terraform-aws-eks.git//modules/aws_auth?ref=v20.22.0"
}