# CloudFormation Templates

> to be used to boostrap infrastructure.

## Use Cases

1. Copy & Tweak Template to fit a project's needs
2. Reference as a substack from another CF template

## Infrastructure Components

1. [x] [ECS Cluster](src/ecs-cluster)
2. [x] [Static Website](src/static-website/README.md)
3. [ ] [API Gateway](src/api-gateway/README.md)
4. [ ] ECS Task
5. [ ] ECS Service
6. [ ] Lambda
7. [ ] NodeJS Lambda Microservice (CRUD)
8. [ ] NodeJS ECS Microservice (CRUD)
9. [ ] Cognito User Pool
10. [ ] SNS Topic (pub-sub)
11. [ ] SNS Subscription + Queue + ECS Service + ECS Task
12. [ ] SNS Subscription + Queue + Lambda
13. [ ] ElasticSearch Cluster
14. [ ] DynamoDB --> Lambda --> ElasticSearch
15. [ ] Python ECS Microservice (CRUD)
16. [ ] Python Lambda Microservice (CRUD)

## CI/CD

1. Validate all folders in `/src` to contain a valid `template.json`
2. Copy everything from `/src` to `s3://${BucketName}` per `/infra`
