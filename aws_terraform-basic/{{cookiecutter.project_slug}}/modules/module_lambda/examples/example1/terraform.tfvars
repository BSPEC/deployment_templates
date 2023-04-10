region        = "eu-central-1"
function_name = "my-lambda-function"
handler       = "handler"
runtime       = "python3.9"
filename      = "lambda_function.py"
environment_variables = {
  "MY_VAR1" = "value1"
  "MY_VAR2" = "value2"
  "MY_VAR3" = "value3"
}
iam_role_name = "lambda_function_iam"
