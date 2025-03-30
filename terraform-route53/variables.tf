variable "domain_name" {
  description = "Main domain name"
  type        = string
  default     = "your-actual-domain.com"  # ← Change this
}

variable "record_sets" {
  description = "List of DNS records to create"
  type = list(object({
    name    = string
    type    = string
    ttl     = number
    records = list(string)
  }))
  default = [
    {
      name    = "www"
      type    = "A"
      ttl     = 300
      records = ["192.0.2.1"]
    },
    {
      name    = "mail"
      type    = "MX"
      ttl     = 300
      records = ["10 mail.example.com"]
    }
  ]
}

variable "tags" {
  description = "Common tags for all resources"
  type        = map(string)
  default = {
    Environment = "production"
    ManagedBy   = "Terraform"
  }
}
