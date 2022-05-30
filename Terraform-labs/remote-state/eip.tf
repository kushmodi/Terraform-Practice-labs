resource "aws_eip" "demoeip" {
  vpc = true
}

resource "aws_eip" "demoip1" {
  vpc = true
  provider = "aws.mumbai"
}
