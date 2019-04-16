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
                    "BodyS3Location": "<open_api_spec_file>",
                    "Description": "<description>"
                }
            }
        }
    }
}
```