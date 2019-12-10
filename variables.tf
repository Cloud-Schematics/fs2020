variable "vpc_name" {
  default = "vpc-fs2020-lab"
}

variable "vpc1_cidr" {
  default = "172.16.0.0/16"
}

variable "zone1" {
  default = "us-south-1"
}

variable "zone2" {
  default = "us-south-2"
}

variable "ssh_public_key" {
  default = ""
}

variable "image" {
  default = "r006-14140f94-fcc4-11e9-96e7-a72723715315"
}

variable "profile" {
  default = "cx2-2x4"
}