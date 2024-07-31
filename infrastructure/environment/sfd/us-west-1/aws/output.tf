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

"output" "topic_arn" {
  "value" = "${module.sns.topic_arn}"
}

"output" "kms_arn" {
  "value" = "${module.dfsdfs.kms_arn}"
}

"output" "queue_arn" {
  "value" = "${module.dfsdfs.queue_arn}"
}

"output" "queue_name" {
  "value" = "${module.dfsdfs.queue_name}"
}

"output" "queue_id" {
  "value" = "${module.dfsdfs.queue_id}"
}