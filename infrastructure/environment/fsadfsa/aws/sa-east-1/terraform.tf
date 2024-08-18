terraform {
  required_version = ">= 1.3.0"

  backend "s3" {
    bucket         = "fsadfsa-fsadfsa-tfstate"
    key            = "fsadfsa-fsadfsa-tfstate"
    region         = "fsadfsa"
    dynamodb_table = "fsadfsa-fsadfsa-tfstate"
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