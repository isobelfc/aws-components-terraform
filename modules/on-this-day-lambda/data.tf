data "aws_lambda_layer_version" "common_libraries_layer" {
  layer_name = "common-libraries-${var.environment}"
}