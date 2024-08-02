#!/bin/bash

set -e 

# docker command to stop the running container to avoid the creation of mutiple container when we do the deploy

container_id=docker ps | awk -F" "'{Print $1}'

docker rm -f $container_id 