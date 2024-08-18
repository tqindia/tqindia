
terraform {
  required_version = ">= 1.3.0"

  backend "s3" {
    bucket         = "gfasadgsdg-gfasadgsdg-tfstate"
    key            = "gfasadgsdg-gfasadgsdg-tfstate"
    region         = "gfasadgsdg"
    dynamodb_table = "gfasadgsdg-gfasadgsdg-tfstate"
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