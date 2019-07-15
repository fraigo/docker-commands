# set user name
export DOCKER_ID_USER="username"

# login to docker
docker login

# build an image from a dockerfile
docker  image build -t $DOCKER_ID_USER/imagename path/to/dockerfile

# list and ckeck image created
docker image ls

# get details of image
docker image inspect $DOCKER_ID_USER/imagename

# push tagged image
docker push $DOCKER_ID_USER/my_image


# pull image
docker pull $DOCKER_ID_USER/my_image


# stop all cantainers
docker stop $(docker ps -q)


#clean volumes not used
docker volume prune -f

# remove unused image overlay volumes
docker image prune -a

# remove all containers and images
docker rm -vf $(docker ps -aq)
docker rmi -f $(docker images -aq)


