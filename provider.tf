variable "ibmcloud_region" {
  description = "Enter your preferred IBM Cloud region to use for your infrastructure"
  default = "us-south"
}

provider "ibm" {
  // 
  // When using Schematics you do not need an API Key - it is retrieved for you
  // You only need a classic_username when creating classic IaaS/PaaS resources
  //iaas_classic_username = "${var.iaas_classic_username}"
  //iaas_classic_api_key  = "${var.iaas_classic_api_key}"
  //ibmcloud_api_key      = "${var.ibmcloud_api_key}"
  generation            = 2
  region                = "${var.ibmcloud_region}"
}