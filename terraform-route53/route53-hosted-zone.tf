resource "aws_route53_zone" "primary" {
  name          = var.domain_name
  comment       = "Managed by Terraform"
  force_destroy = false

  tags = merge(var.tags, {
    Name = "${var.domain_name}-hosted-zone"
  })
}
