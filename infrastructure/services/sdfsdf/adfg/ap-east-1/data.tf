
data "aws_caller_identity" "provider" {}

data "aws_region" "provider" {}


data "terraform_remote_state" "parent" {
  backend = "s3"

  config = {
    bucket = "adfg-ap-east-1-tfstate"
    key    = "adfg-ap-east-1-tfstate"
    region = "adfg"
  }
}