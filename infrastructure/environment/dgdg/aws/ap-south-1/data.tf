# Information about the AWS account and the region configured

# Fetches details about the AWS account
data "aws_caller_identity" "current" {}

# Fetches details about the configured AWS region
data "aws_region" "current" {}