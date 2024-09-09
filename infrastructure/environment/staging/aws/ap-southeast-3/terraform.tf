terraform {
  required_version = ">= 1.3.0"

  backend "s3" {
    bucket  = "staging-ap-southeast-3-tfstate"
    key     = "staging-ap-southeast-3.tfstate"
    region  = "ap-southeast-3"
    encrypt = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.62.0"
    }

    helm = {
      source  = "hashicorp/helm"
      version = "2.14.1"
    }
  }
}

# This Terraform configuration specifies the required Terraform version, S3 backend configuration, 
# and required providers for AWS and Helm.
#
# Terraform Version:
# - Ensures that a minimum version of 1.3.0 is used.
#
# Backend Configuration:
# - Uses an S3 bucket to store the Terraform state file.
# - Bucket: staging-ap-southeast-3-tfstate
# - Key: staging-ap-southeast-3.tfstate
# - Region: ap-southeast-3
# - Encryption: true
#
# Required Providers:
# - AWS provider from HashiCorp with a version of 5.62.0.
# - Helm provider from HashiCorp with a version of 2.14.1.