module "topic" {
  # Specifies whether this is a FIFO topic. Defaults to false.
  fifo = false

  # Enables content-based deduplication for FIFO topics. Defaults to false.
  content_based_deduplication = false

  # List of SQS queue ARNs that will subscribe to this topic.
  sqs_subscribers = [module.notifcationsQueue.queue_arn]

  # Source of the module, specifying a git repository and reference.
  source = "git::undefined?ref=undefined"

  # The environment name, used for naming resources.
  env_name = "adfg-ap-east-1"

  # The layer name, used for naming resources.
  layer_name = "adfg-ap-east-1"

  # The module name, used for naming resources.
  module_name = "topic"
}