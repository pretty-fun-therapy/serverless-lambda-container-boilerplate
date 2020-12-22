#!/bin/bash

aws ecr create-repository --repository-name "$SERVICE_NAME" --image-scanning-configuration scanOnPush=true
