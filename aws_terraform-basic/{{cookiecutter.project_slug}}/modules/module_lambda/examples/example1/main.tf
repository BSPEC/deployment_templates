module "lambda" {
  source = "./modules/module_lambda"

  region = var.region

  function_name         = var.function_name
  handler               = var.handler
  runtime               = var.runtime
  filename              = var.filename
  environment_variables = var.environment_variables
  iam_role_name         = var.iam_role_name
}
