resource "aws_sns_topic" "slack_notifier" {
  name = "${var.pipeline_name}"
}
