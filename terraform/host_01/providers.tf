provider "esxi" {
  esxi_hostname = "#{HOST_01_ESXI_HOSTNAME}#"
  esxi_hostport = 22
  esxi_hostssl  = 433
  esxi_username = "terraform"
  esxi_password = "#{HOST_01_ESXI_PASSWORD}#"
}

terraform {
  required_version = ">= 1.6.0"
  required_providers {
    esxi = {
      source  = "registry.terraform.io/josenk/esxi"
      version = "1.10.3"
    }
  }
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "#{TERRAFORM_ORGANIZATION}#"
    token        = "#{HOST_01_TERRAFORM_TOKEN}#"

    workspaces {
      name = "terraform-kubernetes-homelab-host-01"
    }
  }
}