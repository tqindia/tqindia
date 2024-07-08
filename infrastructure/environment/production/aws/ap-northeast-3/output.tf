
  output "k8s_ca_data"  {
    value = "${module.k8scluster.k8s_ca_data}"
  }
  output "k8s_cluster_name"  {
    value = "${module.k8scluster.k8s_cluster_name}"
  }
  output "k8s_node_group_security_id"  {
    value = "${module.k8scluster.k8s_node_group_security_id}"
  }
  output "cache_host"  {
    value = "${module.redis.cache_host}"
  }
  output "db_host"  {
    value = "${module.postgres.db_host}"
  }
  output "private_subnet_ids"  {
    value = "${module.base.private_subnet_ids}"
  }
  output "k8s_endpoint"  {
    value = "${module.k8scluster.k8s_endpoint}"
  }
  output "k8s_openid_provider_url"  {
    value = "${module.k8scluster.k8s_openid_provider_url}"
  }
  output "k8s_openid_provider_arn"  {
    value = "${module.k8scluster.k8s_openid_provider_arn}"
  }
  output "zone_id"  {
    value = "${module.dns.zone_id}"
  }
  output "cert_arn"  {
    value = "${module.dns.cert_arn}"
  }
  output "db_password"  {
    value = "${module.postgres.db_password}"
  }
  output "db_name"  {
    value = "${module.postgres.db_name}"
  }
  output "k8s_version"  {
    value = "${module.k8scluster.k8s_version}"
  }
  output "name_servers"  {
    value = "${module.dns.name_servers}"
  }
  output "domain"  {
    value = "${module.dns.domain}"
  }
  output "global_database_id"  {
    value = "${module.postgres.global_database_id}"
  }
  output "db_user"  {
    value = "${module.postgres.db_user}"
  }
  output "cache_auth_token"  {
    value = "${module.redis.cache_auth_token}"
  }
  output "vpc_id"  {
    value = "${module.base.vpc_id}"
  }
  output "kms_account_key_arn"  {
    value = "${module.base.kms_account_key_arn}"
  }
