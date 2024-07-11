resource "aws_instance" "ec2_instances" {
  count = length(var.ec2_names)

  ami           = "ami-0ad21ae1d0696ad58"  
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = aws_subnet.snetsouth01.id
  security_groups = [aws_security_group.sgsouth01.name]

  root_block_device {
    volume_size = 30
  }

  tags = {
    Name = var.ec2_names[count.index]
  }
}
