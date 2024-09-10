terraform {
  required_version = ">= 1.3.0"

  backend "s3" {
    bucket = "dgdg-ap-south-1-tfstate"
    key    = "dgdg-ap-south-1.tfstate"
    region = "ap-south-1"
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

# This Terraform configuration block specifies the required Terraform version, backend configuration for state storage,
# and the required providers and their versions. The state is stored in an S3 bucket with encryption enabled.