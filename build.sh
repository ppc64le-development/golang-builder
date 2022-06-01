#!/bin/bash
# Script for bulding golang using source code



wget https://go.dev/dl/go1.17.9.linux-ppc64le.tar.gz

tar -C /usr/local -xzf go1.17.9.linux-ppc64le.tar.gz

export PATH=$PATH:/usr/local/go/bin

go version


#Build Golang's latest version using source code

git clone https://github.com/golang/go  $HOME/go

cd $HOME/go/src/

./make.bash

# to remove previos version of golang
rm -rf /usr/local/go

cp -r $HOME/go /usr/local

echo "Golang is done with below version"

go version

cd $HOME/go/bin

TAG="$(./go version | grep -o go1.* | awk '{print $1}')"
