
terraform {
    required_version = ">= 1.3.0"
  
    backend "s3" {
      bucket         = "gfasadgsdg-us-west-2-tfstate"
      key            = "sagasfg-tfstate"
      region         = "us-west-2"
      dynamodb_table = "gfasadgsdg-us-west-2-sagasfg-tfstate"
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