FROM python:alpine

RUN apk update &&\
    apk add graphviz gcc && \
    apk clean cache &&\
    pip install ansible-inventory-grapher ara
