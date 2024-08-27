
terraform {
  required_version = ">= 1.3.0"

  backend "s3" {
    bucket         = "adfg-ap-east-1-tfstate"
    key            = "adfg-ap-east-1-tfstate"
    region         = "adfg"
    dynamodb_table = "adfg-ap-east-1-tfstate"
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