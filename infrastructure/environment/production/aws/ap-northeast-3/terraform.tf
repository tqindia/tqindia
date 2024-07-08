
  terraform = {
    required_version = ">= 1.3.0"
    backend = [
      {
        local = {
          path = "./tfstate/cops.tfstate"
        }
      }
    ]
    required_providers = {
      aws = [
        {
          version = "4.27.0"
          source = "hashicorp/aws"
        }
      ]
      helm = [
        {
          source = "hashicorp/helm"
          version = "2.6.0"
        }
      ]
    }
  }
