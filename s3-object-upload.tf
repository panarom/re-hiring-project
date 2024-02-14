resource "aws_s3_object" "object-upload-html" {
    for_each        = fileset("uploads/", "*.html")
    bucket          = data.aws_s3_bucket.selected-bucket.bucket
    key             = each.value
    source          = "uploads/${each.value}"
    content_type    = "text/html"
    etag            = filemd5("uploads/${each.value}")
}
