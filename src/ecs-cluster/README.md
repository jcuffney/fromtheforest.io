## ECS Cluster

```json
{
    "Resources": {
        "Stack": {
            "Type": "AWS::CloudFormation::Stack",
            "Properties": {
                "TemplateUrl": "https://s3.amazonaws/cf-templates/ecs-cluster/template.json",
                "Parameters": {
                    "ClusterName": "<cluster_name>"
                }
            }
        }
    }
}
```
