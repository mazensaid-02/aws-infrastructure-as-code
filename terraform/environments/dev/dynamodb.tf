resource "aws_dynamodb_table" "inventory" {
  name         = "inventory"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "product_id"

  attribute {
    name = "product_id"
    type = "S"
  }
}
resource "aws_dynamodb_table" "stock_movements" {
  name         = "stock_movements"
  billing_mode = "PAY_PER_REQUEST"

  hash_key  = "product_id"
  range_key = "movement_id"

  attribute {
    name = "product_id"
    type = "S"
  }

  attribute {
    name = "movement_id"
    type = "S"
  }
}