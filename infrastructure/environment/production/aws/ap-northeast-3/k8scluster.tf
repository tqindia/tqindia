
  module "k8scluster"  {
    cluster_name = "ml-workload"
    min_nodes = ""
    node_launch_template = {
      
    }
    vpc_id = "${module.base.vpc_id}"
    GPU = false
    max_nodes = ""
    spot_instances = false
    env_name = "production-ap-northeast-3"
    ami_type = "AL2_x86_64"
    enable_metrics = false
    module_name = "k8scluster"
    node_disk_size = ""
    layer_name = "production-ap-northeast-3"
    source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_eks?ref=main"
    control_plane_security_groups = [
      
    ]
    eks_log_retention = ""
    k8s_version = "1.26"
    node_instance_type = "t3.medium"
    kms_account_key_arn = "${module.base.kms_account_key_arn}"
    private_subnet_ids = "${module.base.private_subnet_ids}"
  }
