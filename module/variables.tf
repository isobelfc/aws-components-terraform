variable "aws_region" {
  default = "eu-west-1"
}

variable "lambda_name" {
  default = "example-lambda-function"
}

variable "environment" {
  description = "The environment to deploy to"  
}