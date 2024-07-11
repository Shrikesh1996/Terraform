variable "ami_id" {
  description = "AMI id for instance"
  default = "ami-0ad21ae1d0696ad58"
}

variable "vpc_name" {
  description = "Name of VPC"
  default = "vpcsouth01"
}

variable "subnet_name" {
  default = "snetsouth01"
}

variable "igname" {
  default = "igsouth01"
}

variable "routetablename" {
  default = "rtsouth01"
}

variable "security_group_name" {
  description = "Provide SG name"
  default = "scsouth01"
}

variable "master" {
  default = "Master"
}

variable "slave1" {
  default = "Slave1"
}

variable "slave2" {
  default = "Slave2"
}