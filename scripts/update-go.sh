#!/bin/bash

if [ $# -ne 1 ] ; then
    echo "Invalid command parameters"
    exit 1
fi

# go version
version="$1"

url="https://go.dev/dl/go$version.linux-amd64.tar.gz"

download_dir="/tmp"

mkdir -p $download_dir