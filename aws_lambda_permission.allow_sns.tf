resource "aws_lambda_permission" "allow_sns" {
  statement_id  = "AllowExecutionFromSNSTopicSubscription_${var.pipeline_name}"
  action        = "lambda:InvokeFunction"
  function_name = "${data.aws_lambda_function.slack_notifier.function_name}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_sns_topic.slack_notifier.arn}"
}
