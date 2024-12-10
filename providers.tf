terraform {
  required_providers {
    kubernetes = {}
    aws = {}
    fastly = {
      source  = "fastly/fastly"
      version = ">= 0.38.0"
    }
  }
}

version = ">= 0.38.0"

# Configure the Fastly Provider
provider "fastly" {
  api_key = "test"
}

resource "fastly_service_v1" "demo" {
  name = "demofastly"

  domain {
    name    = "demo.notexample.com"
    comment = "demo"
  }

  backend {
    address = "127.0.0.1"
    name    = "localhost"
    port    = 80
  }

  force_destroy = true
}
