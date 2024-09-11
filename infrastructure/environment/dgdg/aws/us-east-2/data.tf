data "aws_caller_identity" "provider" {}

data "aws_region" "provider" {}

data "aws_eks_cluster_auth" "k8s" {
  name = data.terraform_remote_state.parent.outputs.k8s_cluster_name
}

data "terraform_remote_state" "parent" {
  backend = "s3"

  config = {
    bucket  = "dgdg-us-east-2-tfstate"
    key     = "dgdg-us-east-2.tfstate"
    region  = "us-east-2"
    encrypt = true
  }
}

# Documentation

# Data source to retrieve information about the AWS IAM identity that is calling the provider
# Usage: data.aws_caller_identity.provider

# Data source to retrieve the current region
# Usage: data.aws_region.provider

# Data source to get authentication information for an AWS EKS cluster
# Usage: data.aws_eks_cluster_auth.k8s
# Inputs:
# - name: The name of the EKS cluster obtained from the parent Terraform state.

# Data source to retrieve remote state data from an S3 bucket
# Usage: data.terraform_remote_state.parent
# Inputs:
# - backend: The type of backend to use (s3 in this case)
# - config: Configuration for the S3 backend
#   - bucket: The name of the S3 bucket
#   - key: The path to the state file inside the S3 bucket
#   - region: The AWS region where the S3 bucket is located
#   - encrypt: Whether to encrypt the state file