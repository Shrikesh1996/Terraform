# Create an EC2 instance
resource "aws_instance" "master" {
  ami                    = var.ami_id  
  instance_type          = "t2.medium"              
  subnet_id              = aws_subnet.snetsouth01.id
  associate_public_ip_address = true 
  user_data = file("/master.sh")
  key_name               = "MyKey"            
  security_groups        = [aws_security_group.sgsouth01.id]
  private_ip = "10.0.1.200"
  root_block_device {
    volume_size = 30
  }

  tags = {
    Name = var.master
  }
}

# Create Slave2\1 EC2 instance
resource "aws_instance" "slave1" {
  ami                    = var.ami_id  
  instance_type          = "t2.medium"              
  subnet_id              = aws_subnet.snetsouth01.id
  associate_public_ip_address = true              
  user_data = file("/slave.sh")
  key_name               = "MyKey"            
  security_groups        = [aws_security_group.sgsouth01.id]
  private_ip = "10.0.1.201"
  root_block_device {
    volume_size = 30
  }

  tags = {
    Name = var.slave1
  }
}

# Create Slave2 EC2 instance
resource "aws_instance" "slave2" {
  ami                    = var.ami_id  
  instance_type          = "t2.medium"              
  subnet_id              = aws_subnet.snetsouth01.id
  associate_public_ip_address = true              
  user_data = file("/slave.sh")
  key_name               = "MyKey"            
  security_groups        = [aws_security_group.sgsouth01.id]
  private_ip = "10.0.1.202"
  root_block_device {
    volume_size = 30
  }

  tags = {
    Name = var.slave2
  }
}


# Create sonar EC2 instance
resource "aws_instance" "sonar" {
  ami                    = var.ami_id  
  instance_type          = "t2.medium"              
  subnet_id              = aws_subnet.snetsouth01.id
  associate_public_ip_address = true              
  key_name               = "MyKey"            
  security_groups        = [aws_security_group.sgsouth01.id]
  private_ip = "10.0.1.203"
  root_block_device {
    volume_size = 20
  }

  tags = {
    Name = var.sonar
  }
}


# Create nexus EC2 instance
resource "aws_instance" "nexus" {
  ami                    = var.ami_id  
  instance_type          = "t2.medium"              
  subnet_id              = aws_subnet.snetsouth01.id
  associate_public_ip_address = true              
  key_name               = "MyKey"            
  security_groups        = [aws_security_group.sgsouth01.id]
  private_ip = "10.0.1.204"
  root_block_device {
    volume_size = 20
  }

  tags = {
    Name = var.nexus
  }
}

# Create Jenkins EC2 instance
resource "aws_instance" "jenkins" {
  ami                    = var.ami_id  
  instance_type          = "t2.medium"              
  subnet_id              = aws_subnet.snetsouth01.id
  associate_public_ip_address = true              
  key_name               = "MyKey"            
  security_groups        = [aws_security_group.sgsouth01.id]
  private_ip = "10.0.1.205"
  root_block_device {
    volume_size = 20
  }

  tags = {
    Name = var.jenkins
  }
}
