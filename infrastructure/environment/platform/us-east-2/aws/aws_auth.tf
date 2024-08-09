"module" "aws_auth" {
  "aws_auth_roles" = {
    "groups" = ["system:bootstrappers", "system:nodes"]

    "rolearn" = "arn:aws:iam::ACCOUNT_ID:role/platform-eks-default-node-group"

    "username" = "system:node:{{EC2PrivateDNSName}}"
  }

  "aws_auth_roles" = {
    "groups" = ["system:bootstrappers", "system:nodes"]

    "rolearn" = "arn:aws:iam::ACCOUNT_ID:role/platform-eks-nodegroup1-node-group"

    "username" = "system:node:{{EC2PrivateDNSName}}"
  }

  "aws_auth_roles" = {
    "groups" = ["system:masters"]

    "rolearn" = "${module.platform-cluster-role.role_arn}"

    "username" = "saas-managed"
  }

  "aws_auth_users" = {
    "groups" = ["system:masters"]

    "userarn" = "${module.platform-cluster-role.role_arn}"

    "username" = "saas-managed"
  }

  "create" = true

  "create_aws_auth_configmap" = "aws-auth"

  "manage_aws_auth_configmap" = true

  "source" = "git::https//github.com/terraform-aws-modules/terraform-aws-eks.git//modules/aws_auth?ref=v20.22.0"
}