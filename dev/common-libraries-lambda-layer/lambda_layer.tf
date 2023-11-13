module "lambda" {
  source = "../../modules/common-libraries-lambda-layer"

  environment = var.environment
}