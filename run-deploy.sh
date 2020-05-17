#!/usr/bin/env bash

docker run --rm -it \
	-v "$(pwd)"/serverless-config:/app/serverless \
	--env-file serverless-properties.env \
	vitaliikobrin/serverless \
	bash -c "ls -l && ./deploy-serverless.sh"
