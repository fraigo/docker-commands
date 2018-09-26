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

# Access SSH console 
# Syntax: docker-machine ssh {imagename}
docker-machine ssh default

# Get the IP of the virtual machine
docker-machine ip default
# You can use it as a environment variable
DOCKERIP=$(docker-machine ip default)

# Manual way to access SSH 
# - Get the ip using docker-machine ls
# Enter using ssh user 'docker' and pass 'tcuser'
ssh docker@$DOCKERIP

# Copy ssh key to enter without password
ssh-copy-id docker@$DOCKERIP
# Enter password 'tcuser' to copy .ssh/id_rsa.pub to docker machine
# then you can access without password
ssh docker@$DOCKERIP



