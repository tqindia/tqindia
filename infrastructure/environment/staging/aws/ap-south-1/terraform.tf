terraform {
  required_version = ">= 1.3.0"

  backend "s3" {
    bucket  = "-ap-south-1-tfstate"
    key     = "-ap-south-1.tfstate"
    region  = "ap-south-1"
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