#!/bin/sh -ex

source "env.sh"

# https://github.com/golang/go/wiki/Mobile
# https://godoc.org/golang.org/x/mobile/cmd/gomobile
# https://godoc.org/golang.org/x/mobile/cmd/gobind
rm -rf "build"
mkdir "build"
gomobile bind -v -target=ios -o "build/Hello.framework" "hello"
gomobile bind -v -target=android -o "build/hello.aar" "hello"
