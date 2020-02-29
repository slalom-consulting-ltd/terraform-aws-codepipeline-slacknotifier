# examplea

This example deploys a AWS CodePipeline pipeline from the module:

https://github.com/JamesWoolfenden/terraform-aws-codepipeline

## prerequisite

A slack notifier lambda function should be deployed using this repository:

https://github.com/mattchilds1/golang-aws-lambda-slacknotifier

The reason this Lambda function isn't deployed as part of this module, is so that one lambda function can be used with many pipelines.

The lambda function name should be set in the 'function_name' variable in terraform.tfvars.

## Running this example

With an AWS Profile setup and pre-requisite tasks complete, run:

```cli
terraform init
```

```cli
terraform plan
```

```cli
terraform apply
```
