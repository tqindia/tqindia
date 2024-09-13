data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

# The aws_caller_identity data source retrieves information about the current AWS account and user.
# The aws_region data source retrieves the AWS region configured in the provider.