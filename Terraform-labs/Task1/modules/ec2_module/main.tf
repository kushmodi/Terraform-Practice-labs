data "aws_ami" "app_ami" {
  most_recent = true
  owners = ["amazon"]
}

resource "aws_instance" "instance-2" {
  ami = data.aws_ami.app_ami.id
  instance_type = var.ec2_size
}

resource "aws_eip" "ip-1" {
  vpc = true
}

