output "subnet_id" {
  value = aws_subnet.main.id
}

output "vpc_details" {
  description = "VPC details"
  value       = aws_vpc.main
}
