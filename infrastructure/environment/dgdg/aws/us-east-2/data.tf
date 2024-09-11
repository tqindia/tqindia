data "aws_caller_identity" "provider" {}

data "aws_region" "provider" {}

data "aws_eks_cluster_auth" "k8s" {
  name = data.terraform_remote_state.parent.outputs.k8s_cluster_name
}

data "terraform_remote_state" "parent" {
  backend = "s3"

  config = {
    bucket = "dgdg-us-east-2-tfstate"
    key    = "dgdg-us-east-2.tfstate"
    region = "us-east-2"
    encrypt = true
  }
}

# Documentation:
# data "aws_caller_identity" "provider": Retrieves information about the AWS account caller identity.
# data "aws_region" "provider": Retrieves the AWS region configured in the provider.
# data "aws_eks_cluster_auth" "k8s": Retrieves authentication information for the specified EKS cluster.
# data "terraform_remote_state" "parent": Retrieves the remote state data stored in an S3 bucket.