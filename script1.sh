#!/bin/bash
# Script for bulding golang for ppc64le
# please add laterst version which you want to build for golang as parameter while running this script e.g. ./script2.sh go1.18


#Build Go 1.4 on your host(on AMD64)
git clone https://go.googlesource.com/go $HOME/go1.4
cd $HOME/go1.4/src
git checkout release-branch.go1.4
./make.bash

echo "============================ GO BUILD HAS BEEN DONE FOR 1.4 ON AMD64"


#Build Go 1.18 on your host (on AMD 64)

git clone https://go.googlesource.com/go $HOME/go

cd $HOME/go/src

git checkout $1

env GOROOT_BOOTSTRAP=$HOME/go1.4 ./make.bash


echo "============================ GO BUILD HAS BEEN DONE FOR 1.18 ON AMD64"


#set go path

#cd go/bin/

#export PATH=$PATH:/root/go/bin


#echo "=========================== PATH HAS BEEN SET FOR GO"

#Build a bootstrap distribution for your target (for ppc64le)

cd $HOME/go/src

env GOOS=linux GOARCH=ppc64le ./bootstrap.bash

echo "=========================== PACKAGE IS READY PLZ CHECK go-linux-ppc64le-bootstrap.tbz under root folder"
