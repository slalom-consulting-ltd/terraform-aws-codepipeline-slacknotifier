variable "function_name" {
  type        = string
  description = "Name of Lambda function which will be used to notify slack incoming webhook."
}

variable "pipeline_name" {
  type        = string
  description = "Name of the pipeline to send notifications from"
}

variable "aws_account_no" {
  type        = string
  description = ""
}

variable "kms_master_key_id" {
  type    = string
  default = "alias/aws/sns"
}
