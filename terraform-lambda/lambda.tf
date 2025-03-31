# Package source code
data "archive_file" "lambda_source" {
  type        = "zip"
  source_dir  = "${path.module}/src"
  output_path = "${path.module}/lambda_package.zip"
}

# Lambda function
resource "aws_lambda_function" "main" {
  function_name = "my-modular-function"
  role          = aws_iam_role.lambda_exec.arn
  handler       = "lambda_function.handler" # For Python
  runtime       = "python3.9"

  filename         = data.archive_file.lambda_source.output_path
  source_code_hash = data.archive_file.lambda_source.output_base64sha256

  environment {
    variables = {
      ENVIRONMENT = "dev"
    }
  }
}
