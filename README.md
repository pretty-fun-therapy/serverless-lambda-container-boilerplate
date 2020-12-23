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
npm run docker:build:<language>:<framework> (eg: npm run docker:build:node:express)
npm run ecr:push
npm run serverless:deploy
```

# New Images

You can change your Dockerfile to use another image and submit a PR
You should submit a PR with your app bundled in the directory <language>/<framework>/
You can add an NPM command to build your image: npm run docker:build:<language>/<framework>
If you don't use any framework, you should put Vanilla instead.

[envrc]: https://direnv.net/
