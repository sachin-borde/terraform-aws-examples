variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "repository_name" {
  description = "ECR repository name"
  type        = string
  default     = "my-ecr-repo"
}

variable "scan_on_push" {
  description = "Enable image scanning on push"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Common tags for all resources"
  type        = map(string)
  default = {
    Environment = "dev"
    Project     = "terraform-ecr"
  }
}

variable "lifecycle_policy_rules" {
  description = "ECR lifecycle policy rules"
  type        = list(any)
  default = [
    {
      rulePriority = 1
      description  = "Expire untagged images older than 7 days"
      selection = {
        tagStatus   = "untagged"
        countType   = "sinceImagePushed"
        countUnit   = "days"
        countNumber = 7
      }
      action = {
        type = "expire"
      }
    }
  ]
}
