#!/bin/bash

set -e -x

echo 1

pushd flight-school
  bundle install
  bundle exec rspec
popd
