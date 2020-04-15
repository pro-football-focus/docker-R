#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

R_VERSION=3.6.3
VERSION=$(cat version)

docker build \
   --build-arg R_VERSION="${R_VERSION}" \
   -t profootballfocus/rscript_run:$VERSION \
   -f Dockerfile .
