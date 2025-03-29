output "instance_public_ips" {
  description = "Public IP addresses of EC2 instances"
  value       = aws_instance.web_server[*].public_ip
}

output "instance_public_dns" {
  description = "Public DNS names of EC2 instances"
  value       = aws_instance.web_server[*].public_dns
}

output "security_group_id" {
  description = "Security Group ID"
  value       = aws_security_group.ec2_sg.id
}
