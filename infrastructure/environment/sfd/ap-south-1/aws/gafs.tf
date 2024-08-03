"module" "gafs" {
  "env_name" = "sfd-ap-south-1"

  "source" = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/lambda_function?ref=main"

  "layer_name" = "sfd-ap-south-1"

  "module_name" = "gafs"
}