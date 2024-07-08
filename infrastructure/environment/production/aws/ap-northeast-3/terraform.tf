
terraform {
	required_providers {
		aws = {
			source  = "hashicorp/aws"
			version = "~> 4.46.0"
		}
		kubernetes = {
			source  = "hashicorp/kubernetes"
			version = "~> 2.16.1"
		}
	}
	required_version = "~> 1.3"
}