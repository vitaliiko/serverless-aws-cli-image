#!/usr/bin/env bash

docker run --rm -it \
	-v "$(pwd)"/serverless-config:/serverless \
	--env-file serverless-properties.env \
	vitaliikobrin/serverless \
	bash -c "./deploy-serverless.sh"
