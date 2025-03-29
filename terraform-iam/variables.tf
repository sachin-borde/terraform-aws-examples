variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "user_tags" {
  description = "Tags for IAM user"
  type        = map(string)
  default = {
    Purpose = "Terraform Demo"
  }
}
