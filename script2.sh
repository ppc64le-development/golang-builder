#!/bin/bash
# Script for bulding golang for ppc64le
# please add laterst version which you want to build for golang as parameter while running this script e.g. ./script2.sh go1.18

tar -xvf go-linux-ppc64le-bootstrap.tbz

echo "============================ UNTAR IS DONE=================="

git clone https://go.googlesource.com/go $HOME/go

cd $HOME/go/src

git checkout $1

env GOROOT_BOOTSTRAP=$HOME/go-linux-ppc64le-bootstrap ./all.bash

echo "========================== GOLANG BUILD IS DONE =================="

export PATH=$PATH:/root/go/bin

