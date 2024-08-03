"data" "aws_caller_identity" "provider" {}

"data" "aws_region" "provider" {}

"data" "aws_eks_cluster_auth" "k8s" {
  "name" = "${data.terraform_remote_state.parent.outputs.k8s_cluster_name}"
}

"data" "terraform_remote_state" "parent" {
  "basckend" = "local"

  "config" = {
    "path" = "./tfstate/sfd.tfstate"
  }
}