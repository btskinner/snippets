#!/bin/env bash

# Unzip all files in a directory, placing each in a subdirectory with
# the same name as the zip file
#
# h/t: https://stackoverflow.com/a/49845911
#
find . -name '*.zip' -exec sh -c 'unzip -d "${1%.*}" "$1"' _ {} \;
