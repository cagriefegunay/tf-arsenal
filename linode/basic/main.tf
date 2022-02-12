terraform {
  required_providers {
    linode = {
      source = "linode/linode"
    }
  }
}

provider "linode" {
  token       = var.token
  api_version = "v4"
}


# Change LOCAL-NAME to any name you want. It is only for local planning.

resource "linode_instance" "LOCAL-NAME" {
  label           = var.label
  image           = var.image
  region          = var.region
  type            = var.type
  authorized_keys = [var.authorized_keys]
  root_pass       = var.root_pass
}

variable "token" {}
variable "label" {}
variable "image" {}
variable "region" {}
variable "type" {}
variable "authorized_keys" {}
variable "root_pass" {}
