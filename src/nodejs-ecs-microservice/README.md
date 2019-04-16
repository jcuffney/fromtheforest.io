# NodeJS ECS Microservice

```json
{
    "Resources": {
        "Stack": {
            "Type": "AWS::CloudFormation::Stack",
            "Properties": {
                "TemplateUrl": "https://s3.amazonaws/cf-templates/nodejs-ecs-microservice/template.json",
                "Parameters": {}
            }
        }
    }
}
```
