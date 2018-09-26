#!/bin/bash

# Create the default docker virtualbox image 
# Syntax: docker-machine create --driver={virtualbox} {imagename}
docker-machine create --driver=virtualbox default

# Start the default docker virtualbox machine
# Syntax: docker-machine start {imagename}
docker-machine start default

# List machines and status
docker-machine ls

# To generate an environment variables script
# related to the docker machine running
docker-machine env

# Apply environment variables in the current shell session
eval $(docker-machine env)

