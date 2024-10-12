# Data source for AWS caller identity
data "aws_caller_identity" "current" {}

# Data source for AWS region
data "aws_region" "current" {}