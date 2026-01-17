resource "aws_s3_bucket" "assignment_bucket" {
  bucket = var.bucket_name
  tags   = var.tags
}
