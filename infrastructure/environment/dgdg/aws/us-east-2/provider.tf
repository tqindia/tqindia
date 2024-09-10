provider "aws" {
  region              = "us-east-2"
  allowed_account_ids = ["059709188241"]

  default_tags {
    tags = {
      environment_name = "dgdg"
      region           = "us-east-2"
      layer_name       = "dgdg-us-east-2"
    }
  }
}