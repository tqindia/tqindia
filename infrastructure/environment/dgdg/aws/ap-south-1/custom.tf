locals {
  aws_auth_configmap_data = {
    mapRoles    = yamlencode(var.aws_auth_roles)
    mapUsers    = yamlencode(var.aws_auth_users)
    mapAccounts = yamlencode(var.aws_auth_accounts)
  }
}

# Documentation:
# This local block is defining a local variable called `aws_auth_configmap_data`.
# It creates a map with three keys:
# - mapRoles: Encodes the variable `aws_auth_roles` to a YAML string.
# - mapUsers: Encodes the variable `aws_auth_users` to a YAML string.
# - mapAccounts: Encodes the variable `aws_auth_accounts` to a YAML string.

# The variables `aws_auth_roles`, `aws_auth_users`, and `aws_auth_accounts`
# need to be defined elsewhere in your Terraform configuration.