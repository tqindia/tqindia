
data "aws_caller_identity" "provider" {}

data "aws_region" "provider" {}


data "terraform_remote_state" "parent" {
  backend = "s3"

  config = {
    bucket = "adfg-ap-northeast-3-tfstate"
    key    = "adfg-ap-northeast-3-tfstate"
    region = "adfg"
  }
}