# API Gateway 

```json
{
    "Resources": {
        "Stack": {
            "Type": "AWS::CloudFormation::Stack",
            "Properties": {
                "TemplateUrl": "https://s3.amazonaws/cf-templates/api-gateway/template.json",
                "Parameters": {}
            }
        }
    }
}
```
