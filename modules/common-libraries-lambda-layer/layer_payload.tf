data "archive_file" "common_libraries_layer" {
  type        = "zip"
  output_path = "${path.module}/layer_payload.zip"
  source_dir  = "${path.module}/lib"
}