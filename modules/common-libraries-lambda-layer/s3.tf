resource "aws_s3_object" "common_libraries_layer" {
  bucket      = "isobel-lambda-function-store"
  key         = "${var.environment}/layers/${var.service}.zip"
  source      = data.archive_file.common_libraries_layer.output_path
  source_hash = filemd5("${data.archive_file.common_libraries_layer.output_path}")
}