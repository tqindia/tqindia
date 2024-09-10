
data "aws_caller_identity" "provider" {}

data "aws_region" "provider" {}


data "terraform_remote_state" "parent" {
  backend = "s3"

  config = {
    bucket = "dgdg-ap-south-1-tfstate"
    key    = "dgdg-ap-south-1-tfstate"
    region = "dgdg"
  }
}