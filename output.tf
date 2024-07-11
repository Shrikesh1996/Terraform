output "vpc_id" {
  value = aws_vpc.vpcsouth01.id
}

output "subnet_id" {
  value = aws_subnet.subnet.id
}

output "security_group_id" {
  value = aws_security_group.sgsouth01.id
}

output "ec2_instance_ids" {
  value = aws_instance.ec2_instances.*.id
}

output "ec2_instance_public_ips" {
  value = aws_instance.ec2_instances.*.public_ip
}
