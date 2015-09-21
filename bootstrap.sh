#!/bin/sh -ex

source "env.sh"

# Download source
if [ ! -f "go$GO_VERSION.darwin-amd64.tar.gz" ]
then
  curl -O "https://storage.googleapis.com/golang/go$GO_VERSION.darwin-amd64.tar.gz"
fi

# Extract source
rm -rf "$GOROOT"
mkdir -p "$GOROOT"
tar -xf "go$GO_VERSION.darwin-amd64.tar.gz" -C "$GOROOT" --strip-components=1

# Initialize go mobile
rm -rf "$GOPATH/bin"
rm -rf "$GOPATH/pkg"
go install golang.org/x/mobile/cmd/gomobile
gomobile init -v
