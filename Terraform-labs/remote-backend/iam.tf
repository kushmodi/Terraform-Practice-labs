terraform {
  required_version = "~> 1.2.1"

  backend "remote" {}
}

resource "aws_iam_user" "lb" {
  name = "remoteuser"
  path = "/system/"
}