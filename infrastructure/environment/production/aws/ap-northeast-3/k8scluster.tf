
  module "k8scluster"  {
    enable_metrics = false
    k8s_version = "1.26"
    node_disk_size = ""
    vpc_id = "${module.base.vpc_id}"
    source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_eks?ref=main"
    node_instance_type = "t3.medium"
    node_launch_template = {
      
    }
    spot_instances = false
    ami_type = "AL2_x86_64"
    cluster_name = "ml-workload"
    control_plane_security_groups = [
      
    ]
    max_nodes = ""
    min_nodes = ""
    env_name = "production-ap-northeast-3"
    layer_name = "production-ap-northeast-3"
    kms_account_key_arn = "${module.base.kms_account_key_arn}"
    eks_log_retention = ""
    module_name = "k8scluster"
    private_subnet_ids = "${module.base.private_subnet_ids}"
    GPU = false
  }
