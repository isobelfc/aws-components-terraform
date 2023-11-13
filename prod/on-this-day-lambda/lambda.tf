module "lambda" {
  source = "../../modules/on-this-day-lambda"

  environment = var.environment
}