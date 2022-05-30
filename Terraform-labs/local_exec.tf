/*data "aws_ami" "app1_ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

resource "aws_instance" "myec3" {
  ami           = data.aws_ami.app1_ami.id
  instance_type = "t2.micro"

  provisioner "local-exec" {
    command = "echo ${aws_instance.myec3.private_ip} >> private_ips.txt"
  }
}
*/