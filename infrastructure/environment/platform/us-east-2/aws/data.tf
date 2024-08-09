data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

data "aws_eks_cluster_auth" "k8s" {
  name = module.k8scluster.k8s_cluster_name
}

# Documentation:
# This Terraform configuration retrieves the AWS caller identity, current AWS region, 
# and EKS cluster authentication information. 
# 
# - data "aws_caller_identity" "current": Fetches details about the AWS account used by the provider.
# - data "aws_region" "current": Fetches the region configuration for the current AWS provider.
# - data "aws_eks_cluster_auth" "k8s": Fetches the authentication information for the EKS cluster named in the `k8s_cluster_name` output from the `k8scluster` module.