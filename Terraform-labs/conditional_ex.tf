/*provider "aws" {
  region = "us-west-2"
  access_key = "AKIATTM7IKLJNMPWJTNC"
  secret_key = "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"
}
variable "istest" {}
resource "aws_instance" "dev" {
  ami = var.ami
  instance_type = "t2.micro"
  count = var.istest == true ? 1:0
}

resource "aws_instance" "prod" {
  ami = var.ami
  instance_type = "t2.medium"
  count = var.istest == false ? 1:0
}
*/