output "ec2_instance_public_ips" {
  value = [for instance in aws_instance.my_ec2 : instance.public_ip]
}
