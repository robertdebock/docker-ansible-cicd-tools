FROM python:alpine

RUN apk update && \
    apk add --virtual build-dependencies gcc libffi-dev linux-headers make musl-dev openssl-dev && \
    pip install ansible-inventory-grapher ara ansible-lint molecule && \
    apk del build-dependencies && \
    apk add graphviz libssl1.0 font-bitstream-type1 ghostscript-fonts git
