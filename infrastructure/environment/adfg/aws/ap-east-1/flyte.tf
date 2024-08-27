module "flyte" {
  # Name of the release to be created or managed
  release_name = "flyte"

  # URL of the Helm repository that contains the Flyte chart
  repository = "https://flyteorg.github.io/flyte"

  # Kubernetes namespace in which to install the release
  namespace = "flyte"

  # Flag to determine whether to create the namespace if it does not exist
  create_namespace = true

  # Perform install/upgrade as an atomic operation, roll back changes in case of failure
  atomic = true

  # Clean up resources on a failed install/upgrade
  cleanup_on_fail = true

  # Specify the version of the Helm chart to use
  chart_version = "1.13.0"

  # YAML file(s) containing values for the Helm chart
  values_files = []

  # Inline values for the Helm chart
  values = {}

  # Maximum time in seconds to wait for any operation
  timeout = 23

  # Update dependencies if they are missing before installing the chart
  dependency_update = false

  # Wait for the release to become ready
  wait = true

  # Wait until all Jobs have been completed before marking the release as successful
  wait_for_jobs = true

  # Number of previous releases to keep
  max_history = 16
  
  # Source location for the module
  source = "git::undefined?ref=undefined"
  
  # Environment name
  env_name = "adfg-ap-east-1"

  # Layer name
  layer_name = "adfg-ap-east-1"

  # Module name
  module_name = "flyte"
}