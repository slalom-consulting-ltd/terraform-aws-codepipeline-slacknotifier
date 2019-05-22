variable "function_name" {
  type        = "string"
  description = "Name of Lambda function which will be used to notify slack incoming webhook."
}

variable "pipeline_name" {
  type        = "string"
  description = "Name of the pipeline to send notifications from"
}

variable "environment" {
  type        = "list"
  description = "The environment being deployed e.g. dev/test"
}
