#!/usr/bin/env bash

serverless_image_name=vitaliikobrin/serverless

docker build -t $serverless_image_name .
docker push $serverless_image_name
