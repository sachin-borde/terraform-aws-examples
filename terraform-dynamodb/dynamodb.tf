resource "aws_dynamodb_table" "main" {
  name           = var.table_name
  billing_mode   = var.billing_mode
  read_capacity  = var.billing_mode == "PROVISIONED" ? var.read_capacity : null
  write_capacity = var.billing_mode == "PROVISIONED" ? var.write_capacity : null
  hash_key       = var.hash_key

  # Define ALL attributes used in the table and indexes
  attribute {
    name = var.hash_key  # Primary key
    type = "S"
  }

  attribute {
    name = "gsi1pk"      # GSI partition key
    type = "S"
  }

  attribute {
    name = "gsi1sk"      # GSI sort key
    type = "S"
  }

  global_secondary_index {
    name               = "GSI1"
    hash_key           = "gsi1pk"
    range_key          = "gsi1sk"
    write_capacity     = var.billing_mode == "PROVISIONED" ? var.write_capacity : null
    read_capacity      = var.billing_mode == "PROVISIONED" ? var.read_capacity : null
    projection_type    = "ALL"
  }

  server_side_encryption {
    enabled = true
  }

  point_in_time_recovery {
    enabled = true
  }

  tags = var.tags
}
