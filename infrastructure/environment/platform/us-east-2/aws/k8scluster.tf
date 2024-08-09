"module" "k8scluster" {
  "ami_type" = "AL2_x86_64"

  "cluster_name" = "platform-cluster"

  "control_plane_security_groups" = []

  "eks_log_retention" = "60"

  "enable_metrics" = false

  "k8s_version" = "1.26"

  "max_nodes" = "5"

  "min_nodes" = "3"

  "module_name" = "k8scluster"

  "node_disk_size" = "500"

  "node_instance_type" = "t3.xlarge"

  "node_launch_template" = {}

  "spot_instances" = false

  "kms_account_key_arn" = "${module.base.kms_account_key_arn}"

  "private_subnet_ids" = "${module.base.private_subnet_ids}"

  "vpc_id" = "${module.base.vpc_id}"

  "GPU" = false

  "source" = "git::https//github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_eks?ref=main"

  "env_name" = "platform-us-east-2"

  "layer_name" = "platform-us-east-2"
}