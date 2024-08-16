# Module block defining "lambda_function" and specifying the source as a Git repository.
# Replace "git::https://example.com/repo.git?ref=branch" with the actual Git URL and branch/tag/commit hash for the Lambda function's Terraform module.

module "lambda_function" {
  source = "git::https://example.com/repo.git?ref=branch"
}