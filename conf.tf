resource "terraform_data" "test" {
  input = "hello"
}

provider "aws" {
  region                      = "us-east-1"
  access_key                  = "mock"
  secret_key                  = "mock"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  skip_metadata_api_check     = true
}

# =========================
# IaC: Public S3 bucket
# =========================
resource "aws_s3_bucket" "public_bucket" {
  bucket = "my-very-insecure-bucket-123456"
  acl    = "public-read"
}