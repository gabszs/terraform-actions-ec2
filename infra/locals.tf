locals {
  default_tags = {
    Environment = terraform.workspace
    Project     = var.preffix
    Owner       = "gabszs"
  }
}
