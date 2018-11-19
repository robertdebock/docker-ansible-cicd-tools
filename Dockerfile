FROM python:alpine

RUN pip install ansible-inventory-grapher ara && \
    apk update && \
    apk add graphviz && \
    apk clean cache
