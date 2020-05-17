#!/usr/bin/env bash

docker run --rm -it \
	-v "$(pwd)"/serverless-config:/app \
	--env-file serverless-properties.env \
	vitaliikobrin/serverless \
	serverless deploy --verbose --force --region eu-central-1 --stage dev
