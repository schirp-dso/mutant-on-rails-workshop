#!/usr/bin/env bash

exec bundle exec mutant           \
  --include ./spec                \
  --jobs 1                        \
  --require ./spec/spec_helper.rb \
  --use rspec                     \
  $*
