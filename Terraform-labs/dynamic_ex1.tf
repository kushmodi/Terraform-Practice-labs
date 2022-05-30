/*resource "aws_security_group" "dynamicsg" {
  name = "dynamic-sg"
  description = "ingress vault"

  dynamic "ingress" {
    for_each = var.sg_ports
    content {
      from_port = ingress.value
      to_port = ingress.value
      protocol = "TCP"
      cidr_blocks = ["0.0.0.0/0"]

    }
  }
}*/