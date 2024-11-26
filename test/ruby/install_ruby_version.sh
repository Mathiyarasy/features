#!/bin/bash

set -e

# Optional: Import test library
source dev-container-features-test-lib

check "ruby version 2.7.6 installed as default" ruby -v | grep 2.7.6

check "rbenv" bash -c 'eval "$(rbenv init -)" && rbenv --version'
check "rake" bash -c "gem list | grep rake"

# Report result
reportResults