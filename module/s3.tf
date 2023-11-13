resource "aws_s3_object" "lambda_payload" {
  bucket      = "isobel-lambda-function-store"
  key         = "${var.environment}/${var.lambda_name}_payload.zip"
  source      = data.archive_file.lambda_payload.output_path
  source_hash = filemd5("${data.archive_file.lambda_payload.output_path}")
}