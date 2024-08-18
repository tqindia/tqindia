terraform {
  required_version = ">= 1.3.0"

  backend "s3" {
    bucket         = "production-devs-production-devs-tfstate"
    key            = "production-devs-production-devs-tfstate"
    region         = "production-devs"
    dynamodb_table = "production-devs-production-devs-tfstate"
    encrypt        = true
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