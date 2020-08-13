#!/usr/bin/env bash

exec bundle exec mutant            \
  --include ./spec                 \
  --jobs 1                         \
  --require ./spec/spec_helper.rb  \
  --require ./spec/rails_helper.rb \
  --use rspec                      \
  $*
