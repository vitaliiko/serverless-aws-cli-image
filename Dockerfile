FROM node:8-slim

RUN npm install -g serverless

# Install AWS CLI
RUN apt-get update \
	&& apt-get install --no-install-recommends -y python3-venv && python3 -V \
	&& rm -rf /var/lib/apt/lists/* \
	&& curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" \
	&& python3 get-pip.py \
	&& pip install --no-cache-dir awscli \
	&& pip install -U pip \
	&& apt-get remove -y python3 && apt-get purge -y python3 \
	&& aws --version

WORKDIR app

COPY scripts .

CMD serverless
