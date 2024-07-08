
  module "k8scluster"  {
    control_plane_security_groups = [
      
    ]
    eks_log_retention = ""
    max_nodes = ""
    node_instance_type = "t3.medium"
    private_subnet_ids = "${module.base.private_subnet_ids}"
    min_nodes = ""
    node_disk_size = ""
    node_launch_template = {
      
    }
    k8s_version = "1.26"
    module_name = "k8scluster"
    spot_instances = false
    kms_account_key_arn = "${module.base.kms_account_key_arn}"
    env_name = "production-ap-northeast-3"
    layer_name = "production-ap-northeast-3"
    source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_eks?ref=main"
    ami_type = "AL2_x86_64"
    cluster_name = "ml-workload"
    enable_metrics = false
    vpc_id = "${module.base.vpc_id}"
    GPU = false
  }
