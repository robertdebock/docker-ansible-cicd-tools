FROM python:alpine

RUN apk update &&\
    apk add graphviz gcc && \
    pip install ansible-inventory-grapher ara
