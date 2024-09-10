data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

# The 'aws_caller_identity' data source retrieves information about the IAM user or role whose credentials are used to interact with AWS.
# The 'aws_region' data source retrieves the current AWS region for the provider.