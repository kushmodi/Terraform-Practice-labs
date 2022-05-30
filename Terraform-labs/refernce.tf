
/*
provider "aws" {
  region = "us-west-2"
  access_key = "AKIATTM7IKLJNMPWJTNC"
  secret_key = "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"
}

resource "aws_eip" "lb" {
  vpc = true
}

output "eip" {
  value = aws_eip.lb
}

resource "aws_instance" "myec2" {
  ami = "ami-0ca285d4c2cda3300"
  instance_type = "t2.micro"
}

output "instance" {
  value = aws_instance.myec2
}

resource "aws_eip_association" "eip_assc" {
  instance_id = aws_instance.myec2.id
  allocation_id = aws_eip.lb.id
}

resource "aws_security_group" "allow_tls" {
  name = "labs-security"
  ingress {
    from_port = 443
    protocol  = "tcp"
    to_port   = 443
    cidr_blocks = ["${aws_eip.lb.public_ip}/32"]
  }
}
*/

