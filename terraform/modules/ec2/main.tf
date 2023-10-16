
data "aws_ami" "amzn-linux-2023-ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }
}
resource "aws_instance" "my_ec2" {
  count         = 2
  ami           = data.aws_ami.amzn-linux-2023-ami.id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id

  root_block_device {
    volume_type           = var.ec_volume_type
    volume_size           = 8
    delete_on_termination = true
  }

  tags = {
    Name = "Example-Instance-${count.index + 1}"
  }
}
