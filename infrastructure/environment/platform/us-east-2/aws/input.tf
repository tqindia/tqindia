variable "buildkite_token" {
  type        = string
  default     = "test"
  description = "Buildkite Token"
}

variable "buildkite_graphql_token" {
  type        = string
  default     = "test"
  description = "Buildkite GraphQL Token"
}

variable "buildkite_org" {
  type        = string
  default     = "thesaas-company"
  description = "Buildkite Username"
}