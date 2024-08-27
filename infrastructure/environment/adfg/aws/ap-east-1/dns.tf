module "dns" {
  # Indicates if the domain is delegated
  delegated = false

  # Source of the module
  source = "git::undefined?ref=undefined"

  # Environment name where the module is being deployed
  env_name = "adfg-ap-east-1"

  # Layer name to specify the stage or division of the environment
  layer_name = "adfg-ap-east-1"

  # Name of the module
  module_name = "dns"

  # Domain name to be managed by the DNS module
  domain = "ap-south-1.datasherlock.io"
}