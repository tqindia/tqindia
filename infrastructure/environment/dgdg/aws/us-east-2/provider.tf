provider "aws" {
  region = "<AWS_REGION>"

  allowed_account_ids = ["<AWS_ACCOUNT_ID>"]

  default_tags = {
    tags = {
      environment_name = "dgdg"
      region = "<AWS_REGION>"
      layer_name = "dgdg-"
    }
  }
}