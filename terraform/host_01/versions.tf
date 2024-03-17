terraform {
  required_version = ">= 1.6.0"
  required_providers {
    esxi = {
      source  = "registry.terraform.io/josenk/esxi"
      version = "1.10.3"
    }
    tfe = {
      source = "hashicorp/tfe"
      version = "0.53.0"   
    }
  }
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "#{terraform_orginization}#"
    token        = "#{terraform_token}#"

    workspaces {
      name = "#{terraform_workspace}#"
    }
  }
}