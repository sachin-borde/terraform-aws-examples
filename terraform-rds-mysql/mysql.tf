resource "aws_db_instance" "mysql" {
  identifier              = "mysql-instance"
  engine                  = "mysql"
  engine_version          = "8.0.34"
  instance_class          = var.instance_class
  allocated_storage       = var.allocated_storage
  storage_type            = "gp2"
  db_name                 = var.db_name
  username                = var.db_username
  password                = var.db_password
  parameter_group_name    = aws_db_parameter_group.mysql_pg.name
  db_subnet_group_name    = aws_db_subnet_group.mysql_subnet_group.name
  vpc_security_group_ids  = [aws_security_group.mysql_sg.id]
  publicly_accessible     = false
  skip_final_snapshot     = true
  multi_az                = false
  storage_encrypted       = true
  apply_immediately       = true
  maintenance_window      = "sun:03:00-sun:04:00"
  backup_window           = "02:00-03:00"
  backup_retention_period = 7
  deletion_protection     = false

  # MySQL specific settings
  port               = 3306
  option_group_name  = "default:mysql-8-0"
  ca_cert_identifier = "rds-ca-rsa4096-g1"

  tags = var.tags
}
