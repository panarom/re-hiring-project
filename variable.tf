variable "bucket_name" {
  type = string
  description = "Name of the bucket."
}
variable "region" {
    type = string
    default = "us-east-1"
}
variable "aws_access_key" {
    type = string
}
variable "aws_secret_key" {
    type = string
}
variable "deployment_environment" {
    type = string
    default = "development"
}
