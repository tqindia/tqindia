
data "aws_caller_identity" "provider" {}

data "aws_region" "provider" {}


data "terraform_remote_state" "parent" {
  backend = "s3"

  config = {
    bucket = "adfg-us-east-1-tfstate"
    key    = "adfg-us-east-1-tfstate"
    region = "adfg"
  }
}