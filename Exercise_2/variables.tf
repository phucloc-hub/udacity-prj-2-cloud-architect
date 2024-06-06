# TODO: Define the variable for aws_region
variable "region" {
  type    = string
  default = "us-east-1"
}

variable "lambda_function_name" {
  type    = string
  default = "ex2-lambda"
}

variable "runtime" {
  type    = string
  default = "python3.8"
}

variable "output_archive_name" {
  type    = string
  default = "lambda_function_payload.zip"
}

variable "lambda_handler" {
  type    = string
  default = "lambda.lambda_handler"
}