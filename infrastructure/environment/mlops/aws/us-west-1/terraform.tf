terraform {
  required_version = ">= 1.3.0"

  backend "s3" {
    bucket         = "mlops-mlops-tfstate"
    key            = "mlops-mlops-tfstate"
    region         = "mlops"
    dynamodb_table = "mlops-mlops-tfstate"
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