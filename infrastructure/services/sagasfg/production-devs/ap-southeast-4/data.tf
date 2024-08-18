
data "aws_caller_identity" "provider" {}

data "aws_region" "provider" {}


data "terraform_remote_state" "parent" {
  backend = "s3"

  config = {
    bucket = "production-devs-ap-southeast-4-tfstate"
    key    = "production-devs-ap-southeast-4-tfstate"
    region = "production-devs"
  }
}