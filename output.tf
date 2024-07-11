output "vpc_id" {
  value = aws_vpc.vpcsouth01.id
}

output "subnet_id" {
  value = aws_subnet.snetsouth01.id
}

output "internet_gateway_id" {
  value = aws_internet_gateway.igsouth01.id
}

output "route_table_id" {
  value = aws_route_table.rtsouth01.id
}

output "security_group_id" {
  value = aws_security_group.sgsouth01.id
}
