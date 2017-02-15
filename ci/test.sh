#!/bin/bash

set -e -x

echo 2

pushd flight-school
  bundle install
  bundle exec rspec
  pip install awscli
  export AWS_DEFAULT_REGION=us-west-1
  aws s3 ls s3://artifacts.postmates.com/
popd
