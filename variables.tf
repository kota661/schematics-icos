# main #
## icos
variable "icos_instance_name" {
  description = "icos instance name"
}

# common #
## Credential
variable "ibmcloud_api_key" {}
variable "region" {
  description = "us-south, us-east, jp-tok, etc..."
  default     = "us-south"
}

## Region, Resource Group, tags, etc...
variable "resource_group_name" {
  default = "Default"
}

variable "tags" {
  type        = list(string)
  description = "Resouce tags"
}
