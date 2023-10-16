output "vpc_details" {
  description = "VPC Details"
  value       = module.vpc.vpc_details
}

output "bucket_details" {
  value       = module.s3.bucket_details
  description = "Bucket Details"
}

output "ec2_instance_public_ips" {
  value = module.ec2.ec2_instance_public_ips
}