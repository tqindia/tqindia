
terraform {
    required_version = ">= 1.3.0"
  
    backend "s3" {
      bucket         = "adfg-ap-southeast-4-tfstate"
      key            = "afggad-tfstate"
      region         = "ap-southeast-4"
      dynamodb_table = "adfg-ap-southeast-4-afggad-tfstate"
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