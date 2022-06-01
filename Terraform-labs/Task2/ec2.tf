data "aws_ami" "app_ami" {
  most_recent = true
  owners = ["amazon"]
}
variable "ec2_example" {
  default = "t2.micro"

}

resource "aws_instance" "instance-1" {
  ami = data.aws_ami.app_ami.id
  instance_type = var.ec2_example

}