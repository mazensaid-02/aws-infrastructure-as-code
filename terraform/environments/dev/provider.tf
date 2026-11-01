provider "aws" {
  region = var.aws_region

  # Dummy credentials for LocalStack
  access_key = "test"
  secret_key = "test"

  # Disable checks that require real AWS
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  # Use path-style S3 requests
  s3_use_path_style = true

  # Route AWS API requests to LocalStack
  endpoints {
    s3       = "http://localhost:4566"
    dynamodb = "http://localhost:4566"
    iam      = "http://localhost:4566"
  }
}
