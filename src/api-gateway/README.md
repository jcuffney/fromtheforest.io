## API Gateway

```json
{
    "Resources": {
        "Stack": {
            "Type": "AWS::CloudFormation::Stack",
            "Properties": {
                "TemplateUrl": "https://s3.amazonaws/cf-templates/api-gateway/template.json",
                "Parameters": {
                    "ApiName": "<api_name>",
                    "Description": "<description>",
                    "ApiSpecBucket": "<s3_bucket>",
                    "ApiSpecKey": "<s3_object>",
                }
            }
        }
    }
}
```