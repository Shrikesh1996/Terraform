variable "aws_region" {
  description = "The AWS region to deploy to"
  default     = "ap-south-1"
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  default     = "ami-0ad21ae1d0696ad58" # Example AMI ID, replace with your preferred AMI ID
}

variable "instance_type" {
  description = "The instance type for the EC2 instance"
  default     =  "t2.medium" 
}

variable "instance1_name" {
  description = "Master"
  type        = string
  default     = "Master"
}

variable "instance2_name" {
  description = "Slave-1"
  type        = string
  default     = "Slave-1"
}

variable "instance3_name" {
  description = "Slave-2"
  type        = string
  default     = "Slave-2"
}

variable "security_groups_name" {
  description = "sgsouth01"
  default = "sgsouth01"
}

variable "vpc_name" {
  description = "Creating VPC for application"
  default = "vpcsouth01"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "172.20.0.0/16"
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  default     = "172.20.0.0/24"
}

variable "availability_zone" {
  description = "The availability zone for the EC2 instances and EBS volumes"
  default     = "ap-south-1a"    # Replace with your preferred availability zone
}
