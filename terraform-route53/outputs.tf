output "name_servers" {
  description = "Route53 name servers for the hosted zone"
  value       = aws_route53_zone.primary.name_servers
}

output "zone_id" {
  description = "Hosted zone ID"
  value       = aws_route53_zone.primary.zone_id
}

output "domain_name" {
  description = "Managed domain name"
  value       = var.domain_name
}
