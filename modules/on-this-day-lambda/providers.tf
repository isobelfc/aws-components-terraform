provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Service     = "example lambda"
      Environment = var.environment
      Terraform   = "True"
    }
  }
}
