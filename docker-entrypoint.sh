#!/bin/bash

set -e

bundle install

export BOOTSNAP_CACHE_DIR=/tmp/bootsnap

ruby -e "puts RUBY_DESCRIPTION"
echo

while true
do
  echo "==> reset"
  rm -rf "$BOOTSNAP_CACHE_DIR"
  (ruby crash.rb && echo -e "    PASS") || echo -e "    \n\nBOOM!\n\n"
done

