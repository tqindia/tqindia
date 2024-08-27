module "dns" {
  # Whether the DNS is delegated or not
  delegated = false

  # Source of the module, currently undefined; needs to be updated with actual source
  source = "git::undefined?ref=undefined"

  # Environment name
  env_name = "staging-ca-central-1"

  # Layer name
  layer_name = "staging-ca-central-1"

  # Module name
  module_name = "dns"

  # Domain name for DNS
  domain = "ap-south-1.datasherlock.io"
}