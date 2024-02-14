resource "aws_s3_bucket" "web_bucket" {
  bucket = "www.${var.bucket_name}"
}
data "aws_s3_bucket" "selected-bucket" {
  bucket = aws_s3_bucket.web_bucket.bucket
}