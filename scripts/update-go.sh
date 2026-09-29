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

echo "Downloading url..."
if ! curl -o "$download_dir/go$version.linux-amd64.tar.gz" -L "$url" ; then
    echo "Failed to download file"
    exit 1

fi


echo "Removing perviouse go version..."

sudo rm -rf /usr/local/go


