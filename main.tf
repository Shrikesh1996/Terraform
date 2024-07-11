
# Define the EC2 instance

resource "aws_instance" "instance1" {
  ami           = var.ami_id
  instance_type = var.instance_type
  #security_groups = [aws_security_group.sgsouth01.name]
  key_name = "MyKey"
  user_data = file("/master.sh")
  root_block_device {
    volume_type = "gp3"
    volume_size = 30
    delete_on_termination = true
  }
  tags = {
    Name = var.instance1_name
  }
}

resource "aws_instance" "instance2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  #security_groups = [aws_security_group.sgsouth01.name]
  key_name = "MyKey"
  user_data = file("/slave.sh")
  root_block_device {
    volume_type = "gp3"
    volume_size = 30
    delete_on_termination = true
  }
  tags = {
    Name = var.instance2_name
  }
}

resource "aws_instance" "instance3" {
  ami           = var.ami_id
  instance_type = var.instance_type
  #security_groups = [aws_security_group.sgsouth01.name]
  key_name = "MyKey"
  user_data = file("/slave.sh")
   root_block_device {
    volume_type = "gp3"
    volume_size = 30
    delete_on_termination = true
  }
  tags = {
    Name = var.instance3_name
  }
}



