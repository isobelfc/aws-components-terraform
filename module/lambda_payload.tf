data "archive_file" "lambda_payload" {
  type        = "zip"
  output_path = "${path.module}/lambda_payload.zip"
  source_dir  = "${path.module}/lib"
}
