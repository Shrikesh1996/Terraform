
output "security_group_id" {
  value = aws_security_group.sgsouth01.id
}

output "instance_ids" {
  value = [
    aws_instance.instance1.id,
    aws_instance.instance2.id,
    aws_instance.instance3.id
  ]
}

output "instance_private_ips" {
  value = [
    aws_instance.instance1.private_ip,
    aws_instance.instance2.private_ip,
    aws_instance.instance3.private_ip
  ]
}
