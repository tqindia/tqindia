module "topic" {
  # Specifies whether the topic is FIFO (First-In-First-Out)
  fifo = false

  # Enables content-based deduplication for FIFO topics
  content_based_deduplication = false

  # List of SQS queue ARNs to subscribe to the topic
  sqs_subscribers = [module.notificationsQueue.queue_arn]

  # Source location of the module
  source = "git::undefined?ref=undefined"

  # Environment name
  env_name = "staging-ca-central-1"

  # Layer name
  layer_name = "staging-ca-central-1"

  # Module name
  module_name = "topic"
}