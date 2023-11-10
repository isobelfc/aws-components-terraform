data "archive_file" "lambda_payload" {
  type        = "zip"
  output_path = "lambda_payload.zip"
  source_dir  = "lib"
}
