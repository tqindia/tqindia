module "test" {
  # Set FIFO to false, indicating it is a standard SQS queue
  fifo = false
  
  # Disable content-based deduplication
  content_based_deduplication = false
  
  # The amount of time (in seconds) to delay the delivery of all messages in the queue
  delay_seconds = 0
  
  # The number of seconds Amazon SQS retains a message
  message_retention_seconds = 345600
  
  # The amount of time (in seconds) for which a ReceiveMessage action waits for a message to arrive
  receive_wait_time_seconds = 0

  # Source pointing to the SQS module repository
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_sqs?ref=main"

  # Environment name 
  env_name = "fdsafsadf-us-east-2"
  
  # Layer name
  layer_name = "fdsafsadf-us-east-2"
  
  # Module name
  module_name = "test"
}