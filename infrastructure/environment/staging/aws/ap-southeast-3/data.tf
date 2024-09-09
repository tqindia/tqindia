data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

# This data source returns details about the AWS account
# Currently authenticated with. In this case, it gets the AWS Account ID.
data "aws_caller_identity" "current" {
}

# This data source returns details about the current AWS region.
# The region can be useful to ensure resources are created in the right location.
data "aws_region" "current" {
}