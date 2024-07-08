
provider "kubernetes" {
	cluster_ca_certificate = "$(base64decode(module.k8scluster.k8s_ca_data))"
	token = "${data.aws_eks_cluster_auth.k8s.token}"
	host = "https://${data.k8scluster.k8s.endpoint}"
}

provider aws {
	region = "ap-northeast-3"
}

allowed_account_ids = [
	""
]

default_tags "tags"  {
	environment_name = "production"
	region = "ap-northeast-3"
	layer_name = "production-ap-northeast-3"
}
