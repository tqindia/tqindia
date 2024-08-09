module "buildkite" {
  # The name of the Helm release.
  release_name = "buildkite"

  # Repository URL for the Helm chart.
  repository = "https://ghcr.io/buildkite/helm/agent-stack-k8s"

  # Kubernetes namespace in which to install the release.
  namespace = "buildkite"

  # If true, create the specified namespace.
  create_namespace = true

  # If true, install the release in atomic mode.
  atomic = true

  # If true, delete newly created resources if the installation fails.
  cleanup_on_fail = true

  # Version of the Helm chart to install.
  chart_version = "0.1.0"

  # List of values files to use for the release.
  values_files = []

  # Inline values for the release.
  values = {
    agentStackSecret = "buildkite-secret"
    config = {
      org = var.buildkite_org
      pod-spec-patch = {
        containers = {
          name = "checkout"
          envFrom = {
            secretRef = {
              name = "git-checkout"
            }
          }
        }
      }
    }
  }

  # Timeout for the Helm operation in seconds.
  timeout = 23

  # If true, update chart dependencies.
  dependency_update = false

  # If true, wait for the release to be deployed successfully.
  wait = true

  # If true, wait for all the job resources to be complete before marking the release as successful.
  wait_for_jobs = true

  # Maximum number of release versions stored per release.
  max_history = 16

  # Source URL for the Terraform module.
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/helm_chart?ref=main"

  # Environment name.
  env_name = "platform-us-east-2"

  # Layer name.
  layer_name = "platform-us-east-2"

  # Module name.
  module_name = "buildkite"
}