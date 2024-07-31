"module" "dns" {
  "delegated" = false

  "env_name" = "sfd-us-west-1"

  "layer_name" = "sfd-us-west-1"

  "module_name" = "dns"

  "domain" = "gjgh.co"

  "source" = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_dns?ref=main"
}