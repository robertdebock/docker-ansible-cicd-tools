FROM python:alpine

LABEL VERSION=1

RUN apk update && \
    apk add --virtual build-dependencies gcc libffi-dev linux-headers make musl-dev openssl-dev && \
    pip install ansible-inventory-grapher ara ansible-lint molecule && \
    apk del build-dependencies && \
    apk add graphviz font-bitstream-type1 ghostscript-fonts git openssh-client
