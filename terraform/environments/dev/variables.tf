variable "aws_region" {
  description = "AWS region for deploying infrastructure"
  type        = string
  default     = "us-east-1"
}

variable "inventory_bucket_name" {
  description = "Name of the S3 bucket for inventory files"
  type        = string
  default     = "mazensaid-inventory-files"
}
