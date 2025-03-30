output "ecr_repository_arn" {
  description = "ECR repository ARN"
  value       = aws_ecr_repository.main.arn
}

output "ecr_repository_url" {
  description = "ECR repository URL"
  value       = aws_ecr_repository.main.repository_url
}

output "registry_id" {
  description = "ECR registry ID"
  value       = aws_ecr_repository.main.registry_id
}
