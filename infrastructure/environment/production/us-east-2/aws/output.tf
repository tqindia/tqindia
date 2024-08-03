"output" "cloudwatch_log_group_name" {
  "value" = "${module.fdssafas.cloudwatch_log_group_name}"
}

"output" "zone_id" {
  "value" = "${module.dns.zone_id}"
}

"output" "name_servers" {
  "value" = "${module.dns.name_servers}"
}

"output" "domain" {
  "value" = "${module.dns.domain}"
}

"output" "cert_arn" {
  "value" = "${module.dns.cert_arn}"
}