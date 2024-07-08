
  module "k8scluster"  {
    module_name = "k8scluster"
    private_subnet_ids = "${module.base.private_subnet_ids}"
    GPU = false
    k8s_version = "1.26"
    min_nodes = ""
    node_disk_size = ""
    node_instance_type = "t3.medium"
    vpc_id = "${module.base.vpc_id}"
    ami_type = "AL2_x86_64"
    cluster_name = "ml-workload"
    enable_metrics = false
    eks_log_retention = ""
    env_name = "production-ap-northeast-3"
    layer_name = "production-ap-northeast-3"
    spot_instances = false
    kms_account_key_arn = "${module.base.kms_account_key_arn}"
    source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_eks?ref=main"
    control_plane_security_groups = [
      
    ]
    max_nodes = ""
    node_launch_template = {
      
    }
  }
