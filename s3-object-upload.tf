resource "aws_s3_object" "object-upload-html" {
    for_each        = fileset("uploads/${var.deployment_environment}", "*.html")
    bucket          = data.aws_s3_bucket.selected-bucket.bucket
    key             = each.value
    source          = "uploads/${var.deployment_environment}/${each.value}"
    content_type    = "text/html"
    etag            = filemd5("uploads/${var.deployment_environment}/${each.value}")
}
