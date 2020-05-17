#!/usr/bin/env bash

cd serverless
serverless deploy --verbose --force --region ${AWS_REGION} --stage ${STAGE}
