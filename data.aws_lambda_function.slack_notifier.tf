data "aws_lambda_function" "slack_notifier" {
  function_name = "${var.function_name}"
}
