output "public_ip" {
  description = "Public IP addresse assigned to the instance, if applicable"
  value       = aws_instance.webServer.public_ip
}

output "public_dns" {
  description = "Public DNS name assigned to the instances. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC"
  value       = aws_instance.webServer.public_dns
}