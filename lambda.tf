resource "aws_lambda_function" "lambda" {
  function_name = var.lambda_name
  description   = "A simple example lambda"
  filename      = "lambda_payload.zip"
  role          = aws_iam_role.iam_for_lambda.arn
  handler       = "lambda_function.lambda_handler"
  timeout       = 15

  runtime = "python3.11"
}