provider "aws" {
  region              = "us-west-1"
  allowed_account_ids = ["059709188241"]

  default_tags {
    tags = {
      environment_name = "dgdg"
      region           = "us-west-1"
      layer_name       = "dgdg-us-west-1"
    }
  }
}