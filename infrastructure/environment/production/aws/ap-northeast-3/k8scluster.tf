
  module "k8scluster"  {
    node_launch_template = {
      
    }
    spot_instances = false
    cluster_name = "ml-workload"
    enable_metrics = false
    node_instance_type = "t3.medium"
    kms_account_key_arn = "${module.base.kms_account_key_arn}"
    vpc_id = "${module.base.vpc_id}"
    GPU = false
    env_name = "production-ap-northeast-3"
    max_nodes = ""
    min_nodes = ""
    private_subnet_ids = "${module.base.private_subnet_ids}"
    layer_name = "production-ap-northeast-3"
    source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_eks?ref=main"
    ami_type = "AL2_x86_64"
    control_plane_security_groups = [
      
    ]
    eks_log_retention = ""
    k8s_version = "1.26"
    module_name = "k8scluster"
    node_disk_size = ""
  }
