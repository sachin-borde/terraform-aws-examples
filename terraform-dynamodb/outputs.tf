output "dynamodb_table_arn" {
  value = aws_dynamodb_table.main.arn
}

output "dynamodb_table_name" {
  value = aws_dynamodb_table.main.name
}

output "dynamodb_stream_arn" {
  value = aws_dynamodb_table.main.stream_arn
}
