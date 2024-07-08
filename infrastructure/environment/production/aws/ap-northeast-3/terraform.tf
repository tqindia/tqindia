
  terraform = {
    required_version = ">= 1.3.0"
    backend "local"  {
      path = "./tfstate/cops.tfstate"
    }
    required_providers = [
      {
        aws = {
          source = "hashicorp/aws"
          version = "4.27.0"
        }
        helm = {
          source = "hashicorp/helm"
          version = "2.6.0"
        }
      }
    ]
  }
