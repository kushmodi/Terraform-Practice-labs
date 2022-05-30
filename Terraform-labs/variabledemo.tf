/*provider "aws" {
  region = "us-west-2"
  access_key = "AKIATTM7IKLJNMPWJTNC"
  secret_key = "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"
}

resource "aws_security_group" "var_demo" {
  name = "labs-security"
  ingress {
    from_port = 443
    protocol  = "tcp"
    to_port   = 443
    cidr_blocks = [var.vpn_ip]
  }
  ingress {
    from_port = 80
    protocol  = "tcp"
    to_port   = 80
    cidr_blocks = [var.vpn_ip]
  }
  ingress {
    from_port = 53
    protocol  = "tcp"
    to_port   = 53
    cidr_blocks = [var.vpn_ip]
  }
}*/