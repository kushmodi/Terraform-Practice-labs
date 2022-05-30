/*provider "aws" {
  region = "us-west-2"
  access_key = "AKIATTM7IKLJNMPWJTNC"
  secret_key = "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"
}
variable "type" {
  type = list
  default = ["dev-loadbalancer","stage-loadbalancer","prod-loadbalancer","deploy-balancer","test-loadbalancer"]
}
resource "aws_iam_user" "lb" {
  name = var.type[count.index]
  count = 5
  path = "/system/"
}
*/