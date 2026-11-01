resource "aws_iam_policy" "inventory_dynamodb" {
  name        = "inventory-dynamodb-policy"
  description = "Allows the application to access inventory DynamoDB tables"

  policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Action = [
          "dynamodb:GetItem",
          "dynamodb:PutItem",
          "dynamodb:UpdateItem",
          "dynamodb:Query"
        ]

        Resource = [
          aws_dynamodb_table.inventory.arn,
          aws_dynamodb_table.stock_movements.arn
        ]
      }
    ]
  })
}
resource "aws_iam_policy" "inventory_s3" {
  name        = "inventory-s3-policy"
  description = "Allows the application to upload and download inventory files"

  policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Action = [
          "s3:PutObject",
          "s3:GetObject"
        ]

        Resource = "${aws_s3_bucket.inventory_files.arn}/*"
      }
    ]
  })
}

