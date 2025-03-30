resource "aws_db_subnet_group" "mysql_subnet_group" {
  name       = "mysql-subnet-group"
  subnet_ids = module.vpc.private_subnets

  tags = var.tags
}
