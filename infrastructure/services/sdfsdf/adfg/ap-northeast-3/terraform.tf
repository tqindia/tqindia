
terraform {
    required_version = ">= 1.3.0"
  
    backend "s3" {
      bucket         = "adfg-ap-northeast-3-tfstate"
      key            = "sdfsdf-tfstate"
      region         = "ap-northeast-3"
      dynamodb_table = "adfg-ap-northeast-3-sdfsdf-tfstate"
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