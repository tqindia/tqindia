
terraform {
    required_version = ">= 1.3.0"
  
    backend "s3" {
      bucket         = "mlops-us-west-1-tfstate"
      key            = "fasfdasd-tfstate"
      region         = "us-west-1"
      dynamodb_table = "mlops-us-west-1-fasfdasd-tfstate"
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