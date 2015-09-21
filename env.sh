#!/bin/sh -ex

GO_VERSION="1.5.1"

export ANDROID_HOME="$HOME/Library/Android/sdk"

export GOROOT="`pwd`/go-$GO_VERSION"
export GOPATH="`pwd`/go"

export PATH="$PATH:$GOROOT/bin:$GOPATH/bin"
