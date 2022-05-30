/*provider "aws" {
  region = "us-west-2"
  access_key = "AKIATTM7IKLJNMPWJTNC"
  secret_key = "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"
}

resource "aws_instance" "myec2" {
  ami = var.ami
  instance_type = var.list[0]
}

variable "list" {
  type = list
  default = ["t2.nano","t2.micro","t2.medium"]
}

variable "types" {
  type = map
  default = {
    us-east-1 = "t2.nano"
    us-west-2 = "t2.micro"
    us-south-1 = "t2.medium"
  }
}
*/