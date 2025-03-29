output "iam_access_key" {
  value     = aws_iam_access_key.test_key.id
  sensitive = true
}

output "iam_secret_key" {
  value     = aws_iam_access_key.test_key.secret
  sensitive = true
}

output "user_arn" {
  value = aws_iam_user.test_user.arn
}
