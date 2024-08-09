module "aws_auth" {
  # Define the roles to be associated with aws_auth
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
      rolearn  = "${module.platform-cluster-role.role_arn}"
      username = "saas-managed"
    }
  ]

  # Define the users to be associated with aws_auth
  aws_auth_users = [
    {
      groups   = ["system:masters"]
      userarn  = "${module.platform-cluster-role.role_arn}"
      username = "saas-managed"
    }
  ]

  # Indicate that aws_auth should be created
  create = true
  
  # Configuration for creating aws-auth ConfigMap
  create_aws_auth_configmap = true
  
  # Source of the module to use
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-eks.git//modules/aws_auth?ref=v20.22.0"
}