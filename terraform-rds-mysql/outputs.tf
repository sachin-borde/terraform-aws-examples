output "mysql_endpoint" {
  description = "MySQL endpoint"
  value       = aws_db_instance.mysql.endpoint
}

output "mysql_username" {
  description = "MySQL username"
  value       = aws_db_instance.mysql.username
}

output "mysql_db_name" {
  description = "MySQL database name"
  value       = aws_db_instance.mysql.db_name
}
