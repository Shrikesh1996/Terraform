variable "ami_id" {
  description = "AMI id for instance"
  default = "ami-0ad21ae1d0696ad58"
}

variable "type" {
  description = "Gives type of instance"
  default = "t2.micro"
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
  default = "sgsouth01"
}

variable "master" {
  default = "Master"
}

variable "slave1" {
  default = "Slave1"
}

variable "jenkins" {
  default = "Jenkins"
}

variable "nexus" {
  default = "Nexus-Server"
}

variable "sonar" {
  default = "Sonar-Server"
}