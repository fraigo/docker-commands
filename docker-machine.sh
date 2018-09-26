#!/bin/bash

# Create the default docker virtualbox image 
# Syntax: docker-machine create --driver={virtualbox} {imagename}
docker-machine create --driver=virtualbox default

# Start the default docker virtualbox machine
# Syntax: docker-machine start {imagename}
docker-machine start default

