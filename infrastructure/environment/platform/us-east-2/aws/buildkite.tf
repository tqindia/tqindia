"module" "buildkite" {
  "release_name" = "buildkite"

  "repository" = "https://ghcr.io/buildkite/helm/agent-stack-k8s"

  "namespace" = "buildkite"

  "create_namespace" = true

  "atomic" = true

  "cleanup_on_fail" = true

  "chart_version" = "0.1.0"

  "values_files" = []

  "values" = {
    "agentStackSecret" = "buildkite-secret"

    "config" = {
      "org" = "${var.buildkite_org}"

      "pod-spec-patch" = {
        "containers" = {
          "name" = "checkout"

          "envFrom" "secretRef" {
            "name" = "git-checkout"
          }
        }
      }
    }
  }

  "timeout" = 23

  "dependency_update" = false

  "wait" = true

  "wait_for_jobs" = true

  "max_history" = 16

  "source" = "git:: https//github.com/thesaas-company/terraform-cloud-cops.git//modules/helm_chart?ref=main"

  "env_name" = "platform-us-east-2"

  "layer_name" = "platform-us-east-2"

  "module_name" = "buildkite"
}