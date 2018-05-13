#!/bin/bash

sudo apt-get install build-essential python python-dev openssh-client && \
    curl https://bootstrap.pypa.io/get-pip.py | sudo python - && \
    sudo python -m pip install --upgrade awscli==1.11.83 boto==2.48.0 boto3==1.4.6 ansible==2.3.2.0 && \
    aws configure