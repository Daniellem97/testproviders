terraform {
  required_providers {
    kubernetes = {}
    aws = {}
    fastly = {
      source  = "fastly/fastly"
    }
  }
}

# Configure the Fastly Provider
provider "fastly" {
  api_key = "test"
}

resource "fastly_service_vcl" "demo" {
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
