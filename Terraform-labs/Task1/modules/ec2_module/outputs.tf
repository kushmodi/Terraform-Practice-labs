output "eip1" {
  value = aws_eip.ip-1.public_ip
}

output "ec2_id" {
  value = aws_instance.instance-2.id
}