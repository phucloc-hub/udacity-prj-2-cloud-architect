resource "aws_lambda_function" "lambda" {
  filename      = var.output_archive_name
  function_name = var.lambda_function_name
  role          = aws_iam_role.iam_for_lambda.arn
  handler       = var.lambda_handler

  # The filebase64sha256() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the base64sha256() function and the file() function:
  # source_code_hash = "${base64sha256(file("lambda_function_payload.zip"))}"
  source_code_hash = filebase64sha256(var.output_archive_name)

  runtime = var.runtime

  environment {
    variables = {
      foo = "bar"
    }
  }
}