data "aws_caller_identity" "current" {
}

data "aws_region" "current" {
}

# The aws_caller_identity data source gets details about the IAM identity
# that is currently authenticated to the AWS provider.
# Reference: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity

# The aws_region data source gets details about the AWS region
# configured in the provider. It will return the region name.
# Reference: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region