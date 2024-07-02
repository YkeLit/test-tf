terraform {
  required_providers {
    headscale = {
      source  = "awlsring/headscale"
      version = "0.1.7"
    }
  }
}

provider "headscale" {
  # api_key  = var.hd_api_key
  endpoint = "https://neo-shuttler.jet.work"
}

data "headscale_api_keys" "active_keys" {}

resource "headscale_api_key" "default" {}
