#!/bin/bash

if [ $# -ne 1 ] ; then
    echo "Invalid command parameters"
    exit 1
fi

# go version
version="$1"
