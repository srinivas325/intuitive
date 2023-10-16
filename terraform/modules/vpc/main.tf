resource "aws_vpc" "main" {
  cidr_block = var.base_cidr_block
}

resource "aws_subnet" "main" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnet_cidr_block
  availability_zone       = var.aws_region
  map_public_ip_on_launch = true
}


