resource "terraform_data" "test" {
  input = "hello"
}

# =========================
# IaC: Public S3 bucket
# =========================
resource "aws_s3_bucket" "public_bucket" {
  bucket = "my-very-insecure-bucket-123456"
  acl    = "public-read"
}