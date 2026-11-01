output "inventory_bucket_name" {
  description = "Name of the S3 bucket storing inventory files"
  value       = aws_s3_bucket.inventory_files.id
}

output "inventory_bucket_arn" {
  description = "ARN of the S3 inventory bucket"
  value       = aws_s3_bucket.inventory_files.arn
}

output "inventory_table_name" {
  description = "Name of the inventory DynamoDB table"
  value       = aws_dynamodb_table.inventory.name
}

output "stock_movements_table_name" {
  description = "Name of the stock movements DynamoDB table"
  value       = aws_dynamodb_table.stock_movements.name
}