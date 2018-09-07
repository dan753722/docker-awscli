FROM docker:latest

RUN \
	mkdir -p /aws && \
	apk -Uuv add --no-cache groff less python py-pip docker openrc && \
	pip install --upgrade pip && \
	pip install awscli && \ 
	pip install boto3 && \
	rm /var/cache/apk/*

