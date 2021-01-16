variable "pipeline_name" {
  type = string
}

variable "function_name" {
  type        = string
  description = "Lambda function name"
}

variable "aws_account_no" {
  type        = string
  description = ""
}

variable "stages" {
  type        = list(any)
  description = "Build stage definition"
}

variable "common_tags" {
  type        = map(any)
  description = "Implements the common tags scheme"
}

variable "artifact_store" {
  type = map(any)
}

variable "description" {
  type    = string
  default = ""
}
