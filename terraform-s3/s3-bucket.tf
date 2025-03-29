resource "aws_s3_bucket" "main" {
  bucket = var.bucket_name
  tags   = merge(var.tags, { Name = var.bucket_name })
}

# Block all public access
resource "aws_s3_bucket_public_access_block" "main" {
  bucket = aws_s3_bucket.main.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
