# RDS Instance and SG for Craft CMS in DO.

```json
{
    "Resources": {
        "Stack": {
            "Type": "AWS::CloudFormation::Stack",
            "Properties": {
                "TemplateUrl": "https://s3.amazonaws/cf-templates/rds-template/template.json",
                "Parameters": {
                    "DatabaseName": "<database_name>"
                }
            }
        }
    }
}
```
