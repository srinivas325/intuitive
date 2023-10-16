variable "base_cidr_block" {
  type        = string
  description = "A network address prefix in CIDR notation that all of the requested subnetwork prefixes will be allocated within."
  default = "10.0.0.0/16"
}

variable "subnet_cidr_block" {
  type        = string
  description = "A network address prefix in CIDR notation that all of the requested subnetwork prefixes will be allocated within."
  default = "10.0.1.0/24"
}

variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}