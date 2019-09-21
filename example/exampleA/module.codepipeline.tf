module "codepipeline" {
  source         = "github.com/jameswoolfenden/terraform-aws-codepipeline"
  artifact_store = var.artifact_store
  common_tags    = var.common_tags
  description    = var.description
  name           = var.pipeline_name
  stages         = var.stages
}
