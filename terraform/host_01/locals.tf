locals {
  common_tags = {
    createdby  = "Terraform"
    createdon  = formatdate("DD-MM-YYYY hh:mm ZZZ", timestamp())
    modifiedon = formatdate("DD-MM-YYYY hh:mm ZZZ", timestamp())
  }
}