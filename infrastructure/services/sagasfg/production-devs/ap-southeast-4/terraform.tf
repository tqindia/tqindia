
terraform {
    required_version = ">= 1.3.0"
  
    backend "s3" {
      bucket         = "production-devs-ap-southeast-4-tfstate"
      key            = "sagasfg-tfstate"
      region         = "ap-southeast-4"
      dynamodb_table = "production-devs-ap-southeast-4-sagasfg-tfstate"
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