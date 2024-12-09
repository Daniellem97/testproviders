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
  source = "hashicorp/aws"
  region = "us-west-2"
}
