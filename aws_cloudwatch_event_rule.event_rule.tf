resource "aws_cloudwatch_event_rule" "event_rule" {
  name = "${var.pipeline_name}"

  event_pattern = <<PATTERN
{
  "source": [
    "aws.codepipeline"
  ],
  "detail-type": [
    "CodePipeline Stage Execution State Change"
  ],
  "detail": {
    "state": [
      "SUCCEEDED",
      "FAILED"
    ],
    "pipeline": [
      "${var.pipeline_name}"
    ]
  }
}
PATTERN
}
