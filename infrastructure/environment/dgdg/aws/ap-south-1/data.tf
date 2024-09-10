# Fetches details about the AWS account and the region configured
data "aws_caller_identity" "current" {}

# Fetches details about the configured AWS region
data "aws_region" "current" {}