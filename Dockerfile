FROM python:3.7.1

RUN pip install ansible-inventory-grapher && \
    apt-get update && \
    apt-get install -y graphviz && \
    rm -rf /var/lib/apt/lists/*
