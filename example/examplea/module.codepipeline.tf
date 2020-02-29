module "codepipeline" {
  source         = "JamesWoolfenden/codepipeline/aws"
  version        = "0.3.30"
  artifact_store = var.artifact_store
  common_tags    = var.common_tags
  description    = var.description
  name           = var.pipeline_name
  stages         = var.stages
}
