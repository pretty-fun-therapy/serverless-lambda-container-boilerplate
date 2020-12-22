#!/bin/bash

docker tag "$SERVICE_NAME":latest "$AWS_ACCOUNT_ID".dkr.ecr."$AWS_REGION".amazonaws.com/"$SERVICE_NAME":latest
docker push "$AWS_ACCOUNT_ID".dkr.ecr."$AWS_REGION".amazonaws.com/"$SERVICE_NAME":latest
