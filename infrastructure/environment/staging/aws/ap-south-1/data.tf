data "aws_caller_identity" "provider" {}

data "aws_region" "provider" {}

data "aws_eks_cluster_auth" "k8s" {
  name = data.terraform_remote_state.parent.outputs.k8s_cluster_name
}

data "terraform_remote_state" "parent" {
  backend = "s3"

  config = {
    bucket = "staging-ap-south-1-tfstate"

    key    = "staging-ap-south-1.tfstate"

    region = "ap-south-1"

    encrypt = true
  }
}

# Documentation:
# The configuration fetches the current AWS account ID and region
# using `aws_caller_identity` and `aws_region` data sources. 
# It retrieves the EKS cluster authentication data utilizing the cluster name
# fetched from remote Terraform state. The remote state is stored in an S3 bucket
# in the `ap-south-1` region, encrypted by default.