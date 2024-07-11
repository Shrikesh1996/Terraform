# Create a VPC
resource "aws_vpc" "vpcsouth01" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = var.vpc_name
  }
}

# Create a public subnet within the VPC
resource "aws_subnet" "snetsouth01" {
  vpc_id            = aws_vpc.vpcsouth01.id
  cidr_block        = "10.0.1.0/24"  # Replace with your desired subnet CIDR block
  availability_zone = "ap-south-1a"  # Replace with your desired availability zone

  map_public_ip_on_launch = true  # This enables assigning public IP automatically

  tags = {
    Name = var.subnet_name
  }
}

# Create an internet gateway
resource "aws_internet_gateway" "igsouth01" {
  vpc_id = aws_vpc.vpcsouth01.id

  tags = {
    Name = var.igname
  }
}

# Create a route table and associate it with the subnet
resource "aws_route_table" "rtsouth01" {
  vpc_id = aws_vpc.vpcsouth01.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igsouth01.id
  }

  tags = {
    Name = var.routetablename
  }
}

resource "aws_route_table_association" "rtasouth01" {
  subnet_id      = aws_subnet.snetsouth01.id
  route_table_id = aws_route_table.rtsouth01.id
}

# Create a security group
resource "aws_security_group" "sgsouth01" {
  vpc_id = aws_vpc.vpcsouth01.id
  name = var.security_group_name

ingress {
    from_port   = 25
    to_port     = 25
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 465
    to_port     = 465
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 6443
    to_port     = 6443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 3000
    to_port     = 10000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 30000
    to_port     = 32767
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]  # Allow outbound traffic to anywhere
  }

  tags = {
    Name = var.security_group_name
  }
}