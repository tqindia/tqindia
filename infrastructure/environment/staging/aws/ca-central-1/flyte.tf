module "flyte" {
  # Name of the Helm release
  release_name = "flyte"

  # URL of the Helm repository
  repository = "https://flyteorg.github.io/flyte"

  # Kubernetes namespace where the release will be installed
  namespace = "flyte"

  # Flag to create the namespace if it does not exist
  create_namespace = true

  # Flag to use atomic installation (roll back on failure)
  atomic = true

  # Flag to clean up resources on failure
  cleanup_on_fail = true

  # Specify the version of the Helm chart
  chart_version = "1.13.0"

  # List of values files to use
  values_files = []

  # Values to customize the chart
  values = {}

  # Timeout for the Helm operation
  timeout = 23

  # Flag to update dependencies
  dependency_update = false

  # Flag to wait for resources to be ready
  wait = true

  # Flag to wait for job resources to complete
  wait_for_jobs = true

  # Maximum number of release versions to keep
  max_history = 16

  # Source of the Terraform module
  source = "git::undefined?ref=undefined"

  # Environment name
  env_name = "staging-ca-central-1"

  # Layer name
  layer_name = "staging-ca-central-1"

  # Module name
  module_name = "flyte"
}