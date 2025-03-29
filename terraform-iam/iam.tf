# IAM User
resource "aws_iam_user" "test_user" {
  name = "terraform-test-user"
  tags = {
    Purpose = "Terraform Demo"
  }
}

# Access Key
resource "aws_iam_access_key" "test_key" {
  user = aws_iam_user.test_user.name
}

# Policy Attachment
resource "aws_iam_user_policy_attachment" "s3_read_only" {
  user       = aws_iam_user.test_user.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
}
