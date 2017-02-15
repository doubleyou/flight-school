#!/bin/sh

set -e -x

    apk update
    apk install wget
    wget https://bootstrap.pypa.io/get-pip.py
    python get-pip.py
    rm get-pip.py
    pip install awscli
    aws s3 ls s3://artifacts.postmates.com
