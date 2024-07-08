
  module "k8scluster"  {
    cluster_name = "ml-workload"
    control_plane_security_groups = [
      
    ]
    GPU = false
    env_name = "production-ap-northeast-3"
    enable_metrics = false
    k8s_version = "1.26"
    module_name = "k8scluster"
    node_launch_template = {
      
    }
    private_subnet_ids = "${module.base.private_subnet_ids}"
    source = "tqindia/cops/cloud//module/aws_eks"
    ami_type = "AL2_x86_64"
    min_nodes = ""
    spot_instances = false
    kms_account_key_arn = "${module.base.kms_account_key_arn}"
    layer_name = "production-ap-northeast-3"
    eks_log_retention = ""
    max_nodes = ""
    node_disk_size = ""
    node_instance_type = "t3.medium"
    vpc_id = "${module.base.vpc_id}"
    version = "0.0.1"
  }
