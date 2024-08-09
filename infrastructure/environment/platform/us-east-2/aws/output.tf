"output" "k8s_endpoint" {
  "value" = "${module.k8scluster.k8s_endpoint}"
}

"output" "k8s_ca_data" {
  "value" = "${module.k8scluster.k8s_ca_data}"
}

"output" "k8s_cluster_name" {
  "value" = "${module.k8scluster.k8s_cluster_name}"
}

"output" "k8s_openid_provider_url" {
  "value" = "${module.k8scluster.k8s_openid_provider_url}"
}

"output" "k8s_openid_provider_arn" {
  "value" = "${module.k8scluster.k8s_openid_provider_arn}"
}

"output" "k8s_node_group_security_id" {
  "value" = "${module.k8scluster.k8s_node_group_security_id}"
}

"output" "k8s_version" {
  "value" = "${module.k8scluster.k8s_version}"
}

"output" "event_rules" {
  "value" = "${module.karpenter.event_rules}"
}

"output" "iam_role_arn" {
  "value" = "${module.karpenter.iam_role_arn}"
}

"output" "iam_role_name" {
  "value" = "${module.karpenter.iam_role_name}"
}

"output" "iam_role_unique_id" {
  "value" = "${module.karpenter.iam_role_unique_id}"
}

"output" "instance_profile_arn" {
  "value" = "${module.karpenter.instance_profile_arn}"
}

"output" "instance_profile_id" {
  "value" = "${module.karpenter.instance_profile_id}"
}

"output" "instance_profile_name" {
  "value" = "${module.karpenter.instance_profile_name}"
}

"output" "instance_profile_unique" {
  "value" = "${module.karpenter.instance_profile_unique}"
}

"output" "namespace" {
  "value" = "${module.karpenter.namespace}"
}

"output" "node_access_entry_arn" {
  "value" = "${module.karpenter.node_access_entry_arn}"
}

"output" "node_iam_role_arn" {
  "value" = "${module.karpenter.node_iam_role_arn}"
}

"output" "node_iam_role_name" {
  "value" = "${module.karpenter.node_iam_role_name}"
}

"output" "node_iam_role_unique_id" {
  "value" = "${module.karpenter.node_iam_role_unique_id}"
}

"output" "queue_arn" {
  "value" = "${module.karpenter.queue_arn}"
}

"output" "queue_name" {
  "value" = "${module.karpenter.queue_name}"
}

"output" "queue_url" {
  "value" = "${module.karpenter.queue_url}"
}

"output" "service_account" {
  "value" = "${module.karpenter.service_account}"
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

"output" "buildkite_token" {
  "value" = "${module.input.buildkite_token}"
}

"output" "buildkite_graphql_roken" {
  "value" = "${module.input.buildkite_graphql_roken}"
}

"output" "buildkite_org" {
  "value" = "${module.input.buildkite_org}"
}