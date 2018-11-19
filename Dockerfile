FROM python:alpine

RUN apk update && \
    apk add --virtual build-dependencies gcc libffi-dev linux-headers make musl-dev openssl-dev && \
    apk graphviz && \
    pip install ansible-inventory-grapher ara && \
    apk del build-dependencies
