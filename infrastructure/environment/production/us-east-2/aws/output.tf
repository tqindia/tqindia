"output" "cloudwatch_log_group_name" {
  "value" = "${module.fdssafas.cloudwatch_log_group_name}"
}

"output" "kms_account_key_arn" {
  "value" = "${module.base.kms_account_key_arn}"
}

"output" "kms_account_key_id" {
  "value" = "${module.base.kms_account_key_id}"
}

"output" "private_subnet_ids" {
  "value" = "${module.base.private_subnet_ids}"
}

"output" "public_nat_ips" {
  "value" = "${module.base.public_nat_ips}"
}

"output" "public_subnets_ids" {
  "value" = "${module.base.public_subnets_ids}"
}

"output" "s3_log_bucket_name" {
  "value" = "${module.base.s3_log_bucket_name}"
}

"output" "vpc_id" {
  "value" = "${module.base.vpc_id}"
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