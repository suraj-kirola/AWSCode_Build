#!/bin/bash

set -e

# docker pull command to pull the image

docker pull surajkirola/simple-python-flask-app

# docker run command, in order to run the container

docker run -d -p 5000:5000 surajkirola/simple-python-flask-app
