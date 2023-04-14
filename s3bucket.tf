resource "aws_s3_bucket" "bkt" {
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
