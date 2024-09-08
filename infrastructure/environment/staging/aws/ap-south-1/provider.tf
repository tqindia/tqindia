provider "aws" {
  region              = "ap-south-1"
  allowed_account_ids = ["059709188241"]

  default_tags {
    tags = {
      environment_name = ""
      region           = "ap-south-1"
      layer_name       = "-ap-south-1"
    }
  }
}