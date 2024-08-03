"provider" "helm" {
  "kubernetes" = {
    "host" = "https://${data.k8scluster.k8s.endpoint}"

    "cluster_ca_certificate" = "$(base64decode(module.k8scluster.k8s_ca_data))"

    "token" = "${data.aws_eks_cluster_auth.k8s.token}"
  }
}

"provider" "aws" {
  "region" = "us-west-2"

  "allowed_account_ids" = ["609973658768"]

  "default_tags" = {
    "tags" = {
      "environment_name" = "sfd"

      "region" = "us-west-2"

      "layer_name" = "sfd-us-west-2"

      "cluster" = "${module.k8scluster.k8s_cluster_name}"
    }
  }
}