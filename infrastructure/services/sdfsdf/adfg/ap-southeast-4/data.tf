
data "aws_caller_identity" "provider" {}

data "aws_region" "provider" {}


data "terraform_remote_state" "parent" {
  backend = "s3"

  config = {
    bucket = "adfg-ap-southeast-4-tfstate"
    key    = "adfg-ap-southeast-4-tfstate"
    region = "adfg"
  }
}