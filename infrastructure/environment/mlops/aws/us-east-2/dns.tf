module "dns" {
  delegated   = false

  source      = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_dns?ref=main"

  env_name    = "mlops-us-east-2"

  layer_name  = "mlops-us-east-2"

  module_name = "dns"

  domain      = "gd.coma"
}