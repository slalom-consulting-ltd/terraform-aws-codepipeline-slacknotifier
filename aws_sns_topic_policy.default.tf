resource "aws_sns_topic_policy" "default" {
  arn = "${aws_sns_topic.slack_notifier.arn}"

  policy = <<POLICY
  {
  "Version": "2012-10-17",
  "Id": "__default_policy_ID",
  "Statement": [
    {
      "Sid": "__default_statement_ID",
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Action": [
        "SNS:GetTopicAttributes",
        "SNS:SetTopicAttributes",
        "SNS:AddPermission",
        "SNS:RemovePermission",
        "SNS:DeleteTopic",
        "SNS:Subscribe",
        "SNS:ListSubscriptionsByTopic",
        "SNS:Publish",
        "SNS:Receive"
      ],
      "Resource": "${aws_sns_topic.slack_notifier.arn}",
      "Condition": {
        "StringEquals": {
          "AWS:SourceOwner": "553700203877"
        }
      }
    },
    {
      "Sid": "AWSEvents_spl-lambda_SendToSNS",
      "Effect": "Allow",
      "Principal": {
        "Service": "events.amazonaws.com"
      },
      "Action": "sns:Publish",
      "Resource": "${aws_sns_topic.slack_notifier.arn}"
    }
  ]
}
  POLICY
}
