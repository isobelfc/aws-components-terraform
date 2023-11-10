resource "aws_cloudwatch_log_group" "log_group" {
  name              = "/aws/lambda/example-lambda-function"
  retention_in_days = 14
  skip_destroy      = true
}
