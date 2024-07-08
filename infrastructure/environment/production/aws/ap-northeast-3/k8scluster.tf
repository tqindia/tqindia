
  module "k8scluster"  {
    k8s_version = "1.26"
    spot_instances = false
    vpc_id = "${module.base.vpc_id}"
    node_disk_size = ""
    private_subnet_ids = "${module.base.private_subnet_ids}"
    ami_type = "AL2_x86_64"
    control_plane_security_groups = [
      
    ]
    enable_metrics = false
    max_nodes = ""
    kms_account_key_arn = "${module.base.kms_account_key_arn}"
    GPU = false
    layer_name = "production-ap-northeast-3"
    source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_eks?ref=main"
    eks_log_retention = ""
    min_nodes = ""
    module_name = "k8scluster"
    node_launch_template = {
      
    }
    cluster_name = "ml-workload"
    node_instance_type = "t3.medium"
    env_name = "production-ap-northeast-3"
  }
