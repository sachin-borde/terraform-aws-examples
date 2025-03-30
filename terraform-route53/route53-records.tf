resource "aws_route53_record" "default" {
  count = length(var.record_sets)

  zone_id = aws_route53_zone.primary.zone_id
  name    = "${var.record_sets[count.index].name}.${var.domain_name}"
  type    = var.record_sets[count.index].type
  ttl     = var.record_sets[count.index].ttl
  records = var.record_sets[count.index].records
}

# Example ALIAS record (uncomment if needed)
# resource "aws_route53_record" "alb_alias" {
#   zone_id = aws_route53_zone.primary.zone_id
#   name    = "app.${var.domain_name}"
#   type    = "A"
#
#   alias {
#     name                   = aws_lb.main.dns_name
#     zone_id                = aws_lb.main.zone_id
#     evaluate_target_health = true
#   }
# }
