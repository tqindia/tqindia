resource "module" "buildkite" {
  # Name of the release
  release_name = "buildkite"

  # URL of the helm chart repository
  repository = "https://ghcr.io/buildkite/helm/agent-stack-k8s"

  # Kubernetes namespace where the release will be installed
  namespace = "buildkite"

  # Whether to create the namespace specified in the `namespace` argument
  create_namespace = true

  # Whether to upgrade atomically, rollback on failure
  atomic = true

  # Perform clean up on a failed installation
  cleanup_on_fail = true

  # Version of the helm chart to deploy
  chart_version = "0.1.0"

  # List of values files to apply
  values_files = []

  # Inline values to override default values in the chart
  values = {
    agentStackSecret = "buildkite-secret"
    config = {
      org = var.buildkite_org
      pod-spec-patch = {
        containers = [
          {
            name = "checkout"
            envFrom = [
              {
                secretRef = {
                  name = "git-checkout"
                }
              }
            ]
          }
        ]
      }
    }
  }

  # Maximum time in seconds to wait for any individual Kubernetes operation
  timeout = 23

  # Perform dependency update before installing the chart
  dependency_update = false

  # Whether to wait for all resources to be in a ready state before marking the release as successful
  wait = true

  # Wait until all Jobs have been completed before marking the release as successful
  wait_for_jobs = true

  # Limit the maximum number of revisions saved per release
  max_history = 16

  # Path to the custom module being used for helm chart installation
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/helm_chart?ref=main"

  # Name of the environment
  env_name = "platform-us-east-2"

  # Layer name context
  layer_name = "platform-us-east-2"

  # Module name context
  module_name = "buildkite"
}