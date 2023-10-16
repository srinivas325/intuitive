variable "instance_type" {
    description = "Type of EC2 Instance"
    default = "t2.micro"
}

variable "ec_volume_type" {
    description = "Type of EC2 Instance Volume"
    default = "gp2"
}

variable "subnet_id" {
  type        = string
  description = "A network address prefix in CIDR notation that all of the requested subnetwork prefixes will be allocated within."
  default = "10.0.1.0/24"
}