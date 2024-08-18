
data "aws_caller_identity" "provider" {}

data "aws_region" "provider" {}


data "terraform_remote_state" "parent" {
  backend = "s3"

  config = {
    bucket = "mlops-us-west-1-tfstate"
    key    = "mlops-us-west-1-tfstate"
    region = "mlops"
  }
}