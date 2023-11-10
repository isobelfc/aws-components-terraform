resource "aws_lambda_function" "lambda" {
  filename      = "lambda_payload.zip"
  function_name = var.lambda_name
  role          = aws_iam_role.iam_for_lambda.arn
  handler       = "lambda_function.lambda_handler"
  timeout       = 15

  runtime = "python3.11"
}