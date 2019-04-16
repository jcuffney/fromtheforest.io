# NodeJS Lambda Microservice

```json
{
    "Resources": {
        "Stack": {
            "Type": "AWS::CloudFormation::Stack",
            "Properties": {
                "TemplateUrl": "https://s3.amazonaws/cf-templates/lambda/template.json",
                "Parameters": {
                    "FunctionName": "<function_name>",
                    "FunctionDescription": "<function_description>",
                    "SourceBucketName": "<bucket_name>",
                    "SourceKey": "<bucket_key>",
                    "Timeout": "<lambda_timeout>",
                    "Runtime": "Node.js 8.10"
                }
            }
        }
    }
}
```
