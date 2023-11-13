terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=5"
    }
  }

  backend "s3" {
    bucket = "isobel-terraform-store"
    key    = "dev/common-libraries-lambda-layer.tf"
    region = "eu-west-1"
    acl    = "bucket-owner-full-control"
  }

  required_version = ">= 1.4.0"
}