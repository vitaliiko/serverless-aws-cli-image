FROM node:8-slim

RUN npm install -g serverless@1.57.0

RUN apt-get update \
	&& apt-get install --no-install-recommends -y python3-venv && python3 -V \
	&& rm -rf /var/lib/apt/lists/* \
	&& curl "https://bootstrap.pypa.io/pip/3.5/get-pip.py" -o "get-pip.py" \
	&& python3 get-pip.py \
	&& pip install --no-cache-dir awscli \
	&& aws --version

WORKDIR app

COPY scripts .

CMD serverless
