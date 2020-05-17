FROM node:8-slim

# Install AWS CLI
RUN apt-get update \
	&& apt-get install -y python3-venv && python3 -V \
	&& curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" \
    && python3 get-pip.py \
    && pip install awscli \
    && aws --version

RUN npm install -g serverless

WORKDIR app

CMD serverless
