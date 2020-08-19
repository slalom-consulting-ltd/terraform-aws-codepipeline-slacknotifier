[![Slalom][logo]](https://slalom.com)

terraform-aws-codepipeline-slacknotifier

[![Build Status](https://github.com/slalom-consulting-ltd/terraform-aws-codepipeline-slacknotifier/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/slalom-consulting-ltd/terraform-aws-codepipeline-slacknotifier)
[![Latest Release](https://img.shields.io/github/release/slalom-consulting-ltd/terraform-aws-codepipeline-slacknotifier.svg)](https://github.com/slalom-consulting-ltd/terraform-aws-codepipeline-slacknotifier/releases/latest)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)

A collection of AWS resources to send AWS [Codebuild](https://aws.amazon.com/codebuild/) build success/failure's to slack using a Lambda function.

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Introduction

AWS [Codebuild](https://aws.amazon.com/codebuild/) doesn't have a large ecosystem of plugins like Jenkins or other orchestration tools. This plugin module is intended to give you the basic functionality of notifying a Slack channel with build status's to enable ChatOps.
This repository intentionally doesn't include the deployment of the Lambda function which notifies Slack, this is so that many pipelines can utilise one lambda function.

This module will work with the following Slack Notifier lambda function <https://github.com/mattchilds1/golang-aws-lambda-slacknotifier>.

## Usage

Include this repository as a module in your existing terraform code:

```hcl
  module "slacknotifier" {
    source         = "Path/To/Module"
    function_name  = var.function_name
    pipeline_name  = var.pipeline_name
    environment    = var.environment
  }
```

 see examples folder for examples.
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| aws\_account\_no | n/a | `string` | n/a | yes |
| function\_name | Name of Lambda function which will be used to notify slack incoming webhook. | `string` | n/a | yes |
| kms\_master\_key\_id | n/a | `string` | `"alias/aws/sns"` | no |
| pipeline\_name | Name of the pipeline to send notifications from | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| SNS\_Topic | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Related Projects

Check out these related projects.

- [golang-aws-lambda-slacknotifier](https://github.com/mattchilds1/golang-aws-lambda-slacknotifier) - Simple Lambda function written in golang to notify an incoming slack webhook from an SNS topic subscription.

## Help

**Got a question?**

File a GitHub [issue](https://github.com/slalom-consulting-ltd/terraform-aws-codepipeline-slacknotifier/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/slalom-consulting-ltd/terraform-aws-codepipeline-slacknotifier/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2019-2020 [Slalom, LLC](https://slalom.com)

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

|  [![Matt Childs][mattchilds1_avatar]][mattchilds1_homepage]<br/>[Matt Childs][mattchilds1_homepage] | [![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage] |
|---|---|

  [mattchilds1_homepage]: https://github.com/mattchilds1
  [mattchilds1_avatar]: https://github.com/mattchilds1.png?size=150
  [jameswoolfenden_homepage]: https://github.com/jameswoolfenden
  [jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150

[logo]: https://gist.githubusercontent.com/JamesWoolfenden/5c457434351e9fe732ca22b78fdd7d5e/raw/15933294ae2b00f5dba6557d2be88f4b4da21201/slalom-logo.png
[website]: https://slalom.com
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden

[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-codepipeline-slacknotifier&url=https://github.com/slalom-consulting-ltd/terraform-aws-codepipeline-slacknotifier
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-codepipeline-slacknotifier&url=https://github.com/slalom-consulting-ltd/terraform-aws-codepipeline-slacknotifier
[share_reddit]: https://reddit.com/submit/?url=https://github.com/slalom-consulting-ltd/terraform-aws-codepipeline-slacknotifier
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/slalom-consulting-ltd/terraform-aws-codepipeline-slacknotifier
[share_email]: mailto:?subject=terraform-aws-codepipeline-slacknotifier&body=https://github.com/slalom-consulting-ltd/terraform-aws-codepipeline-slacknotifier
