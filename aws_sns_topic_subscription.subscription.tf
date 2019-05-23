resource "aws_sns_topic_subscription" "subscription" {
  topic_arn = "${aws_sns_topic.slack_notifier.arn}"
  protocol  = "lambda"
  endpoint  = "${data.aws_lambda_function.slack_notifier.arn}"
}
