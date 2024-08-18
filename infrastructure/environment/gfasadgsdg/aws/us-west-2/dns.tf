module "dns" {
  delegated    = false

  source       = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_dns?ref=main"

  env_name     = "gfasadgsdg-us-west-2"

  layer_name   = "gfasadgsdg-us-west-2"

  module_name  = "dns"

  domain       = "asdfsadf.com"
}