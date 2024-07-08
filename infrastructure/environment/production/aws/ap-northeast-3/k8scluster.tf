
  module "k8scluster"  {
    max_nodes = ""
    node_instance_type = "t3.medium"
    vpc_id = "${module.base.vpc_id}"
    env_name = "production-ap-northeast-3"
    layer_name = "production-ap-northeast-3"
    control_plane_security_groups = [
      
    ]
    k8s_version = "1.26"
    ami_type = "AL2_x86_64"
    GPU = false
    module_name = "k8scluster"
    kms_account_key_arn = "${module.base.kms_account_key_arn}"
    source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_eks?ref=main"
    eks_log_retention = ""
    min_nodes = ""
    node_disk_size = ""
    node_launch_template = {
      
    }
    spot_instances = false
    private_subnet_ids = "${module.base.private_subnet_ids}"
    cluster_name = "ml-workload"
    enable_metrics = false
  }
