FROM python:3.9-alpine

RUN pip install --upgrade pip
RUN apk add --no-cache krb5-dev gcc build-base 

RUN adduser -D worker
USER worker
WORKDIR /home/worker

ARG version
RUN pip install --user aws-adfs==${version}

ENTRYPOINT ["/home/worker/.local/bin/aws-adfs"]