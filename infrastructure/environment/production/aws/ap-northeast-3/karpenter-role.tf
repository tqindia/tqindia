
  module "karpenter-role"  {
    env_name = "production-ap-northeast-3"
    layer_name = "production-ap-northeast-3"
    module_name = "karpenter-role"
    source = "terraform-aws-modules/eks/aws//modules/karpenter"
    terraform_values = [
      {
        key = "cluster_name"
        value = "${module.k8scluster.k8s_cluster_name}"
      },
      {
        value = "{     AmazonSSMManagedInstanceCore = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"   }"
        key = "node_iam_role_additional_policies"
      },
      {
        key = "create_node_iam_role"
        value = "true"
      }
    ]
  }
