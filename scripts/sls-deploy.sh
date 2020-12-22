#!/bin/bash

latest_digest=$(aws ecr describe-images --repository-name "$SERVICE_NAME" --query 'sort_by(imageDetails,& imagePushedAt)[-1].imageDigest' --output yaml)
echo sls deploy --digest "$latest_digest"
sls deploy --digest "$latest_digest"
