## Static SPA Website

```json
{
    "Resources": {
        "Stack": {
            "Type": "AWS::CloudFormation::Stack",
            "Properties": {
                "TemplateURL": "https://s3.amazonaws.com/com.cuffney.cf-templates/static-spa-website/template.json",
                "Parameters": {
                    "HostedZoneName": "example.com",
                    "DomainName": "test.example.com"                   
                }
            }
        }
    }
}
```

```json
{
    "Resources": {
        "Stack": {
            "Type": "AWS::CloudFormation::Stack",
            "Properties": {
                "TemplateURL": "https://s3.amazonaws.com/com.cuffney.cf-templates/static-spa-website/template.json",
                "Parameters": {
                    "HostedZoneName": "test.example.com",
                    "DomainName": "some.test.example.com"                   
                }
            }
        }
    }
}
```