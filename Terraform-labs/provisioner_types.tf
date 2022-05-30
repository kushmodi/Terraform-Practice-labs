/*resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"

  ingress {
    description = "SSH into VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "Outbound Allowed"
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

data "aws_ami" "app2_ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

resource "aws_instance" "myec4" {
  ami = data.aws_ami.app2_ami.id
  instance_type = "t2.micro"
  key_name = "terraform"
  vpc_security_group_ids  = [aws_security_group.allow_ssh.id]

  provisioner "remote-exec" {
    inline = [
      "sudo yum -y install nano"
    ]
  }
  provisioner "remote-exec" {
    when    = destroy
    inline = [
      "sudo yum -y remove nano"
    ]
  }
  connection {
    type = "ssh"
    user = "ec4-user"
    private_key = file("./terraform.pem")
    host = self.public_ip
  }
}
*/