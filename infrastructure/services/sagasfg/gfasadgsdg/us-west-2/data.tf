
data "aws_caller_identity" "provider" {}

data "aws_region" "provider" {}


data "terraform_remote_state" "parent" {
  backend = "s3"

  config = {
    bucket = "gfasadgsdg-us-west-2-tfstate"
    key    = "gfasadgsdg-us-west-2-tfstate"
    region = "gfasadgsdg"
  }
}