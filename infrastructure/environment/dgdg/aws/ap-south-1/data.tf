data "aws_caller_identity" "provider" {}

data "aws_region" "provider" {}

data "aws_eks_cluster_auth" "k8s" {
  name = data.terraform_remote_state.parent.outputs.k8s_cluster_name
}

data "terraform_remote_state" "parent" {
  backend = "s3"

  config = {
    bucket = "dgdg-ap-south-1-tfstate"
    key    = "dgdg-ap-south-1.tfstate"
    region = "ap-south-1"
    encrypt = true
  }
}

# Documentation:

# The `aws_caller_identity` data source is used to get details about the AWS account.
# This data source has no arguments.
#
# The `aws_region` data source is used to get details about the AWS region configured in the provider.
# This data source has no arguments.

# The `aws_eks_cluster_auth` data source is used to retrieve authentication details for an EKS cluster.
# This data source uses the name attribute which is sourced from the remote state outputs of the `parent` configuration.
#
# The `terraform_remote_state` data source is used to fetch the state of another Terraform configuration.
# - backend: Specifies the type of backend. Here it's "s3".
# - config: Map of backend configuration options.
#   - bucket: S3 bucket name where the remote state is stored.
#   - key: The path to the state file inside the S3 bucket.
#   - region: The AWS region where the S3 bucket is located.
#   - encrypt: Whether the state file should be encrypted or not.