# Lambda With Container Boilerplate

# Configuration

if you are using [envrc], create a .envrc file and specify the following environment variables:  
SERVICE_NAME=my_ecr_repository
AWS_REGION=my_aws_region  
AWS_ACCOUNT_ID=123456789012  

If you don't use your default AWS profile, you should also specify it:
AWS_PROFILE=my_aws_profile

*you can use .envrc.sample*

You will also need to update the name in your package.json.  
It should be the same as the SERVICE_NAME variable for consistency.

# Init

You need to login to ECR and then create a repository

```shell script
npm run ecr:login  
npm run ecr:create
```

# Deploy Function

```shell script
npm run docker:build  
npm run ecr:push
npm run serverless:deploy
```

## Change Image

You can change your Dockerfile to use another image. 
If you don't want to deploy node, you will still have to use npm for serverless. But you should update your dependencies accordingly.


[envrc]: https://direnv.net/
