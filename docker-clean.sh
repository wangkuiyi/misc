# Remove dangling images
docker rmi $(docker images -f dangling=true -q)

# Remove all exited containers
docker rm $(docker ps -a -f status=exited -q)

# Remove containers using more than one filter
docker rm $(docker ps -a -f status=exited -f status=created -q)

# Remove dangling volumes - Docker 1.9 and later
docker volume rm $(docker volume ls -f dangling=true -q)

