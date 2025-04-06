variable "instance_name" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "role_arn" {
  type    = string
  default = "arn:aws:iam::515966499694:role/github-actions-terraform-role"
}


variable "instance_ami" {
  type    = string
  default = "ami-02cfee28b56653f5c"
}

variable "region" {
  type    = string
  default = "sa-east-1"
}

variable "preffix" {
  type    = string
  default = "test-actions"
}

variable "state_bucket" {
  type    = string
  default = "test-actions-bucket-state-file"
}
