#!/bin/bash

set -e -x

echo 2

pushd flight-school
  bundle install
  bundle exec rspec
popd
