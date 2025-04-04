terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.93"
    }
  }

  backend "s3" {
    bucket       = "test-actions-bucket-state-file"
    region       = "sa-east-1"
    key          = "test/infra.tfstate"
    use_lockfile = true
  }
  required_version = "~> 1.10"
}

provider "aws" {
  region = var.region

  assume_role {
    role_arn = var.role_arn
  }

  default_tags {
    tags = local.default_tags
  }
}

## EC2
resource "aws_instance" "this" {
  ami = var.instance_ami
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}