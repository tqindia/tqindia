
terraform {
  required_version = ">= 1.3.0"

  backend "s3" {
    bucket         = "devs-eu-south-2-tfstate"
    key            = "devs-eu-south-2-tfstate"
    region         = "devs"
    dynamodb_table = "devs-eu-south-2-tfstate"
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