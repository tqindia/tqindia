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
# - The `data "aws_caller_identity" "provider"` resource retrieves details about the AWS account used by Terraform.
# - The `data "aws_region" "provider"` resource retrieves the region in which the provider is operating.
# - The `data "aws_eks_cluster_auth" "k8s"` resource retrieves authentication details for the specified EKS cluster.
# - The `data "terraform_remote_state" "parent"` resource retrieves the remote state from the specified S3 bucket to enable referencing of outputs from another Terraform configuration.