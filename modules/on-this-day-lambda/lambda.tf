resource "aws_lambda_function" "lambda" {
  function_name = "${var.lambda_name}-${var.environment}"
  description   = "Get an event from this day in history"

  s3_bucket         = "isobel-lambda-function-store"
  s3_key            = aws_s3_object.lambda_payload.key
  s3_object_version = aws_s3_object.lambda_payload.version_id

  role    = aws_iam_role.iam_for_lambda.arn
  handler = "lambda_function.lambda_handler"
  timeout = 15

  runtime = "python3.11"
}