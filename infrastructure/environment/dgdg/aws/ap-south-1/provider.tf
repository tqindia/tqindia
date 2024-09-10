provider "aws" {
  region              = "ap-south-1"
  allowed_account_ids = ["059709188241"]

  default_tags = {
    tags = {
      environment_name = "dgdg"
      region           = "ap-south-1"
      layer_name       = "dgdg-ap-south-1"
    }
  }
}

# This configuration sets up an AWS provider for Terraform. 
# The specified region is "ap-south-1".
# Only the AWS account with ID "059709188241" is allowed.
# Default tags are applied to all resources managed by this provider:
#   - environment_name: "dgdg"
#   - region: "ap-south-1"
#   - layer_name: "dgdg-ap-south-1"