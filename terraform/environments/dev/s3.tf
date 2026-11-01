resource "aws_s3_bucket" "inventory_files" {
  bucket = var.inventory_bucket_name
}

resource "aws_s3_bucket_versioning" "inventory_files" {
  bucket = aws_s3_bucket.inventory_files.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "inventory_files" {
  bucket = aws_s3_bucket.inventory_files.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "inventory_files" {
  bucket = aws_s3_bucket.inventory_files.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

