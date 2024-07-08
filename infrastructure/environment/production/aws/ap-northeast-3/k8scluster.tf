
  module "k8scluster"  {
    ami_type = "AL2_x86_64"
    cluster_name = "ml-workload"
    enable_metrics = false
    k8s_version = "1.26"
    source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_eks"
    version = "0.0.1"
    max_nodes = ""
    spot_instances = false
    private_subnet_ids = "${module.base.private_subnet_ids}"
    GPU = false
    eks_log_retention = ""
    min_nodes = ""
    layer_name = "production-ap-northeast-3"
    node_launch_template = {
      
    }
    kms_account_key_arn = "${module.base.kms_account_key_arn}"
    vpc_id = "${module.base.vpc_id}"
    env_name = "production-ap-northeast-3"
    control_plane_security_groups = [
      
    ]
    module_name = "k8scluster"
    node_disk_size = ""
    node_instance_type = "t3.medium"
  }
