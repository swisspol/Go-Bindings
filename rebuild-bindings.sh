#!/bin/sh -ex

source "env.sh"

# https://github.com/golang/go/wiki/Mobile
# https://godoc.org/golang.org/x/mobile/cmd/gomobile
# https://godoc.org/golang.org/x/mobile/cmd/gobind
rm -rf "build"
mkdir "build"
mkdir "build/macosx"
gomobile bind -v -target=osx -o "build/macosx/Hello.framework" "hello"
mkdir "build/ios"
gomobile bind -v -target=ios -o "build/ios/Hello.framework" "hello"
mkdir "build/android"
gomobile bind -v -target=android -o "build/android/hello.aar" "hello"
