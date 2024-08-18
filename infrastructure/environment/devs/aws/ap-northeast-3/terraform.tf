
terraform {
  required_version = ">= 1.3.0"

  backend "s3" {
    bucket         = "devs-ap-northeast-3-tfstate"
    key            = "devs-ap-northeast-3-tfstate"
    region         = "devs"
    dynamodb_table = "devs-ap-northeast-3-tfstate"
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