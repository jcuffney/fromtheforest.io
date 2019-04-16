# CloudFormation Templates

> to be used to boostrap infrastructure.

## Use Cases

1. Copy & Tweak Template to fit a project's needs
2. Reference as a substack from another CF template

## Infrastructure Components

1. [x] [ECS Cluster](src/ecs-cluster)
2. [x] [Static Website](src/static-website)
3. [ ] [API Gateway](src/api-gateway)
4. [ ] [NodeJS Lambda Microservice](src/nodejs-lambda-microservice) (CRUD)
5. [ ] [NodeJS ECS Microservice](src/nodejs-ecs-microservice) (CRUD)
6. [ ] Cognito User Pool
7.  [ ] SNS Topic (pub-sub)
8.  [ ] SNS Subscription + Queue + ECS Service + ECS Task
9.  [ ] SNS Subscription + Queue + Lambda
10. [ ] ElasticSearch Cluster
11. [ ] DynamoDB --> Lambda --> ElasticSearch
12. [ ] Python ECS Microservice (CRUD)
13. [ ] Python Lambda Microservice (CRUD)

## CI/CD

1. Validate all folders in `/src` to contain a valid `template.json`
2. Copy everything from `/src` to `s3://${BucketName}` per `/infra`
