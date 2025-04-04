variable "region" {
  type = string
}

variable "role_arn" {
  type = string
}

variable "preffix" {
  type = string
}

variable "bucket_versioning_status" {
  type = string
}

variable "state_bucket" {
  type = string
}

variable "bucket_statefile_key" {
  type = string
}

variable "instance_name" {
  type = string
}

variable "instance_type" {
  type = string
}

locals {
  default_tags = {
    Environment = terraform.workspace
    Project     = var.preffix
    Owner       = "gabszs"
  }
}