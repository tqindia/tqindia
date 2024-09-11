module "role" {
  allowed_iams = []

  allowed_k8s_services = [
    {
      namespace     = "*"
      service_name = "*"
    }
  ]

  env_name = "dgdg-us-east-2"

  extra_iam_policies = ["arn:aws:iam::aws:policy/CloudWatchEventsFullAccess"]

  iam_policy = ["arn:aws:iam::aws:policy/CloudWatchEventsFullAccess"]

  kubernetes_trusts = {
    namespace    = "*"
    service_name = "*"
    open_id_url  = ""
    open_id_arn  = ""
  }

  layer_name = "dgdg-us-east-2"

  links = []

  module_name = "role"

  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_iam_role?ref=main"
}

output "role_arn" {
  value = module.role.role_arn
}