module "mysql" {
  db_name         = "app"
  engine_version  = "5.7.mysql_aurora.2.04.2"
  env_name        = "dgdg-ap-south-1"
  instance_class  = "db.t3.medium"
  layer_name      = "dgdg-ap-south-1"
  module_name     = "mysql"
  multi_az        = true
  safety          = true
  source          = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_mysql?ref=main"
}

output "db_host" {
  value = module.mysql.db_host
}

output "db_name" {
  value = module.mysql.db_name
}

output "db_password" {
  value = module.mysql.db_password
}

output "db_user" {
  value = module.mysql.db_user
}