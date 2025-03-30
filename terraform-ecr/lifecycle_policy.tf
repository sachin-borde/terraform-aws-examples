resource "aws_ecr_lifecycle_policy" "main" {
  repository = aws_ecr_repository.main.name
  policy = jsonencode({
    rules = var.lifecycle_policy_rules
  })
}
