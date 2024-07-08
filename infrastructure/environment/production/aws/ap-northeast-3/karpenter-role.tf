
  module "karpenter-role"  {
    layer_name = "production-ap-northeast-3"
    module_name = "karpenter-role"
    source = "terraform-aws-modules/eks/aws//modules/karpenter"
    terraform_values = [
      {
        key = "cluster_name"
        value = "${module.k8scluster.k8s_cluster_name}"
      },
      {
        key = "node_iam_role_additional_policies"
        value = "{     AmazonSSMManagedInstanceCore = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"   }"
      },
      {
        value = "true"
        key = "create_node_iam_role"
      }
    ]
    env_name = "production-ap-northeast-3"
  }
