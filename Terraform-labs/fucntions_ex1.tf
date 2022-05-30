/*provider "aws" {
  region = "us-west-2"
  access_key = "AKIATTM7IKLJNMPWJTNC"
  secret_key = "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"
}
locals {
  time = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
}
variable "region" {
  default = "us-west-2"
}

variable "tags" {
  type = list
  default = ["firstec2","secondec2"]
}

resource "aws_key_pair" "loginkey" {
  key_name   = "login-key"
  public_key = file("${path.module}/id_rsa.pub")
}

resource "aws_instance" "app-dev" {
  ami = lookup(var.ami,var.region)
  instance_type = "t2.micro"
  key_name = aws_key_pair.loginkey.key_name
  count = 2

  tags = {
    Name = element(var.tags,count.index)
  }
}


output "timestamp" {
  value = local.time
}*/

