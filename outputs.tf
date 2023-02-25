output "react_ip" {
  value = "http://${aws_instance.ec2_instance[2].public_ip}:3000"
}

output "nodejs_public_ip" {
  value = aws_instance.ec2_instance[1].public_ip
}

output "postgresql_private_ip" {
  value = aws_instance.ec2_instance[0].private_ip
}