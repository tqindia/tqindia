module "ghfsh" {
  # Alert Manager Configuration
  alert_manager_definition = <<EOF
alertmanager_config: |
  route:
    receiver: 'default'
  receivers:
    - name: 'default'
EOF

  # Indicates whether to create resources
  create = true

  # Indicates whether to create a workspace
  create_workspace = true

  # KMS Key ARN for encryption, if any
  kms_key_arn = ""

  # Logging configuration for the module
  logging_configuration = {}

  # Rule group namespaces for the module
  rule_group_namespaces = {}

  # Tags to be applied to resources
  tags = {}

  # Alias for the workspace
  workspace_alias = "sgfhsfg"

  # ID of the workspace
  workspace_id = "shfghg"

  # Source of the module
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-managed-service-prometheus.git?ref=main"

  # Name of the environment
  env_name = "adfg-ap-east-1"

  # Name of the layer
  layer_name = "adfg-ap-east-1"

  # Name of the module
  module_name = "ghfsh"
}