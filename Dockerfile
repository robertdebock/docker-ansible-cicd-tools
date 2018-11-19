FROM python:alpine

RUN apk update &&\
    apk add graphviz gcc && \
    apk cache clean &&\
    pip install ansible-inventory-grapher ara
