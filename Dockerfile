FROM python:3.9-alpine

RUN pip install --upgrade pip
RUN apk add --no-cache krb5-dev gcc build-base 

RUN adduser -D worker
USER worker
WORKDIR /home/worker

RUN pip install --user aws-adfs==2.6.3

ENTRYPOINT ["/home/worker/.local/bin/aws-adfs"]