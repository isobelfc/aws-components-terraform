resource "aws_lambda_layer_version" "common_libraries_layer" {
  layer_name = "${var.service}-${var.environment}"

  s3_bucket  = "isobel-lambda-function-store"
  s3_key     = aws_s3_object.common_libraries_layer.key
  s3_object_version = aws_s3_object.common_libraries_layer.version_id

  compatible_runtimes = ["python3.11"]
}