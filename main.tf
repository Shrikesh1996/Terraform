# Create an EC2 instance
resource "aws_instance" "master" {
  ami                    = var.ami_id  
  instance_type          = var.type         
  subnet_id              = aws_subnet.snetsouth01.id
  associate_public_ip_address = true 
  # user_data = file("/master.sh")
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

# Create Jenkins EC2 instance
resource "aws_instance" "Jenkins" {
  ami                    = var.ami_id  
  instance_type          = "t2.medium"              
  subnet_id              = aws_subnet.snetsouth01.id
  associate_public_ip_address = true              
  user_data = file("/jenkins.sh")
  key_name               = "MyKey"            
  security_groups        = [aws_security_group.sgsouth01.id]
  private_ip = "10.0.1.202"
  root_block_device {
    volume_size = 30
  }

  tags = {
    Name = var.jenkins
  }
}

# Create Nexus EC2 instance
resource "aws_instance" "nexus" {
  ami                    = var.ami_id  
  instance_type          = "t2.medium"              
  subnet_id              = aws_subnet.snetsouth01.id
  associate_public_ip_address = true              
  user_data = file("/nexus.sh")
  key_name               = "MyKey"            
  security_groups        = [aws_security_group.sgsouth01.id]
  private_ip = "10.0.1.203"
  root_block_device {
    volume_size = 30
  }

  tags = {
    Name = var.nexus
  }
}

# Create Sonar EC2 instance
resource "aws_instance" "sonar" {
  ami                    = var.ami_id  
  instance_type          = "t2.medium"              
  subnet_id              = aws_subnet.snetsouth01.id
  associate_public_ip_address = true              
  user_data = file("/sonar.sh")
  key_name               = "MyKey"            
  security_groups        = [aws_security_group.sgsouth01.id]
  private_ip = "10.0.1.204"
  root_block_device {
    volume_size = 30
  }

  tags = {
    Name = var.sonar
  }
}
