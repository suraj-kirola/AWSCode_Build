#!/bin/bash

set -e 

# Get the container ID of the running container
container_id=$(docker ps -q)

# Check if a container ID was returned
if [ -n "$container_id" ]; then
  echo "Stopping container with ID: $container_id"
  docker stop $container_id
  docker rm -f $container_id
else
  echo "No running container found."
fi

# "Explanation:
# docker ps -q: This command retrieves the IDs of all running containers. The -q flag ensures that only the container IDs are returned without additional information.
# Command Substitution: $(...) is used to capture the output of docker ps -q into the container_id variable.
# Check if container_id is non-empty: Ensures that a valid container ID is found before attempting to stop and remove the container.
# Stopping and Removing the Container: docker stop and docker rm -f are used to stop and remove the container.