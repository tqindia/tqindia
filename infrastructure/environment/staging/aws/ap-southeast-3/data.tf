data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

# This data block fetches the AWS account ID and the user's ARN
data "aws_caller_identity" "current" {
}

# This data block fetches the current AWS region
data "aws_region" "current" {
}