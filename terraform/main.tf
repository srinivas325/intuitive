provider "aws" {
  region = var.aws_region  # Set your desired AWS region here
  # Add any other required or optional provider configurations here
}

module "vpc" {
  source = "./modules/vpc"
}

module "s3" {
  source = "./modules/s3"
}

module "ec2" {
  source = "./modules/ec2"
  subnet_id = module.vpc.subnet_id
}
