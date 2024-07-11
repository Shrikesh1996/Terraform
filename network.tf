
resource "aws_vpc" "vpcsouth01" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "vpcsouth01"
  }
}

resource "aws_subnet" "snetsouth01" {
  vpc_id            = aws_vpc.vpcsouth01.id
  cidr_block        = var.subnet_cidr
  map_public_ip_on_launch = true
  tags = {
    Name = "snetsouth01"
  }
}

resource "aws_security_group" "sgsouth01" {
  vpc_id = aws_vpc.vpcsouth01.id
  description = "Allow SSH and all traffic"
  name = "sgsouth01"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "sgsouth01"
  }
}
