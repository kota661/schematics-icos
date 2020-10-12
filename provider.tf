provider "ibm" {
  # Credential
  ibmcloud_api_key = var.ibmcloud_api_key

  # Regsion, Vpc
  region     = var.region
  generation = 2 # The generation of IBM Cloud VPC infrastructure.
}

locals {
  # ref. https://cloud.ibm.com/docs/containers?topic=containers-regions-and-zones
  resion_alias_list = {
    "us-south" = "dal",
    "us-east"  = "wdc",
    "eu-de"    = "fra",
    "eu-gb"    = "lon",
    "au-syd"   = "syd",
    "jp-tok"   = "tok"
  }
}

locals {
  region_alias = "${lookup(local.resion_alias_list, var.region)}"
}
