resource "aws_sns_topic" "slack_notifier" {
  name              = var.pipeline_name
  kms_master_key_id = var.kms_master_key_id
}
