
  module "k8scluster"  {
    ami_type = "AL2_x86_64"
    node_launch_template = {
      
    }
    spot_instances = false
    env_name = "production-ap-northeast-3"
    layer_name = "production-ap-northeast-3"
    k8s_version = "1.26"
    max_nodes = ""
    kms_account_key_arn = "${module.base.kms_account_key_arn}"
    private_subnet_ids = "${module.base.private_subnet_ids}"
    GPU = false
    source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_eks?ref=main"
    cluster_name = "ml-workload"
    eks_log_retention = ""
    min_nodes = ""
    module_name = "k8scluster"
    node_instance_type = "t3.medium"
    vpc_id = "${module.base.vpc_id}"
    control_plane_security_groups = [
      
    ]
    enable_metrics = false
    node_disk_size = ""
  }
