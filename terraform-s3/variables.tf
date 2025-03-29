variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Unique S3 bucket name"
  type        = string
  default     = "my-unique-bucket-name-860572" # Change this to a unique name
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "versioning_enabled" {
  description = "Enable versioning for the bucket"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Common tags for all resources"
  type        = map(string)
  default = {
    Environment = "dev"
    Project     = "terraform-s3"
  }
}
