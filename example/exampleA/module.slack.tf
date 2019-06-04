module "slack" {
  source         = "../../"
  pipeline_name  = "${var.pipeline_name}"
  function_name  = "${var.function_name}"
  aws_account_no = "${var.aws_account_no}"
}
