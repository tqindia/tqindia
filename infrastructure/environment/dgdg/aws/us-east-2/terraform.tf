terraform {
  required_version = ">= 1.3.0"

  backend "s3" {
    bucket  = "dgdg--tfstate"
    key     = "dgdg-.tfstate"
    region  = "us-west-2" # Specify a valid AWS region
    encrypt = true
  }

  required_providers {
    aws  = {
      source  = "hashicorp/aws"
      version = "5.62.0"
    }
    
    helm = {
      source  = "hashicorp/helm"
      version = "2.14.1"
    }
  }
}

# This Terraform configuration includes:
# - Required Terraform version
# - S3 backend configuration for storing the Terraform state file
# - Required providers and their versions (AWS and Helm)