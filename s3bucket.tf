resource "aws_s3_bucket" "b" {
  bucket = "my-bucket124"
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
