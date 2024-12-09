terraform {
  required_providers {
    kubernetes = {
      source = "opentofu/kubernetes"
    }
    aws = {
      source = "opentofu/aws"
    }
  }
}

provider "aws-test-no-source" {
  # provider configuration here
  region = "us-west-2"
}
