"module" "dns" {
  "delegated" = false

  "env_name" = "production-us-east-2"

  "layer_name" = "production-us-east-2"

  "module_name" = "dns"

  "domain" = "dasad.com"

  "source" = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_dns?ref=main"
}