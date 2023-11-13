provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Service     = "on this day"
      Environment = var.environment
      Terraform   = "True"
    }
  }
}
