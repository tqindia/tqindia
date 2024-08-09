terraform {
  required_version = ">= 1.3.0"

  backend "s3" {
    bucket         = "platform-us-east-2-tfstate"
    key            = "platform-us-east-2.tfstate"
    region         = "us-east-2"
    dynamodb_table = "platform-us-east-2-tfstate"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.27.0"
    }

    helm = {
      source  = "hashicorp/helm"
      version = "2.6.0"
    }
  }
}