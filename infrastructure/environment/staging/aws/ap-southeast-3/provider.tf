provider "aws" {
  region              = "ap-southeast-3"
  allowed_account_ids = ["059709188241"]

  default_tags {
    tags = {
      environment_name = "staging"
      region           = "ap-southeast-3"
      layer_name       = "staging-ap-southeast-3"
    }
  }
}