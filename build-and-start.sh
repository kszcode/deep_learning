#!/usr/bin/env bash

set -x
docker build -t hands-on .
mkdir $(pwd)/hands-on-notebook
docker run -it -p 8888:8888 -v $(pwd)/hands-on-notebook:/notebooks/hands-on hands-on
