#!/bin/bash

# List docker machines
docker-compose ls

# Start docker (create containers as needed)
# -d parameter is to keep in the foreground
docker-compose up -d

# Stop docker 
docker-compose down

# List docker container processes
docker-compose ps

# Exec command in docker container
# Syntax: docker-compose exec {containername} {command}
docker-compose exec wordpress bash


