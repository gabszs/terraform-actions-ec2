provider "aws" {
  region = var.region

  # assume_role {
  #   role_arn = var.role_arn
  # }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.93"
    }
  }
}

### S3
resource "aws_s3_bucket" "state" {
  bucket        = "${var.preffix}-bucket-state-file"
  force_destroy = true
}

resource "aws_s3_bucket_versioning" "this" {
  bucket = aws_s3_bucket.state.id
  versioning_configuration {
    status = var.bucket_versioning_status
  }
}