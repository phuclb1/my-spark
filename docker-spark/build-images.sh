#!/bin/bash

set -e

docker build --build-arg http_proxy=http://10.61.2.237:3128 --build-arg https_proxy=http://10.61.2.237:3128 -t spark-base:2.3.2 ./docker/base
docker build --build-arg http_proxy=http://10.61.2.237:3128 --build-arg https_proxy=http://10.61.2.237:3128 -t spark-master:2.3.2 ./docker/spark-master
docker build --build-arg http_proxy=http://10.61.2.237:3128 --build-arg https_proxy=http://10.61.2.237:3128 -t spark-worker:2.3.2 ./docker/spark-worker
docker build --build-arg http_proxy=http://10.61.2.237:3128 --build-arg https_proxy=http://10.61.2.237:3128 -t spark-submit:2.3.2 ./docker/spark-submit