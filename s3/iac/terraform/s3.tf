resource "aws_s3_bucket" "example" {
  bucket = "s3-terraform-example-1234567890"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}