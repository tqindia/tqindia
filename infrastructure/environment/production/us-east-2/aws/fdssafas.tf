"module" "fdssafas" {
  "env_name" = "production-us-east-2"

  "source" = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/lambda_function?ref=main"

  "layer_name" = "production-us-east-2"

  "module_name" = "fdssafas"
}