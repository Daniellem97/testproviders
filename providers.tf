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

provider "aws" {
  # provider configuration here
  region = "us-west-2"
}
