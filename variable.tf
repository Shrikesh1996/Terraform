variable "aws_region" {
  description = "The AWS region to deploy resources."
  default     = "ap-south-1"  # Adjust as needed
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "The CIDR block for the subnet."
  default     = "10.0.1.0/24"
}

variable "instance_type" {
  description = "The type of EC2 instance to deploy."
  default     = "t2.medium"  # Adjust as needed
}

variable "key_name" {
  description = "The name of the key pair to use for EC2 instances."
  default     = "MyKey"
}

variable "ec2_names" {
  description = "List of EC2 instance names."
  default     = ["slave1", "slave2", "master"]
}
