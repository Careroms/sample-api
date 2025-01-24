DOCKER_IMAGE="sample-api"
DOCKER_TAG="latest"

if docker container inspect sample-api > /dev/null 2>&1; then
  docker container rm -f sample-api
fi

if [ -n $(docker images --filter=reference="$DOCKER_IMAGE:$DOCKER_TAG" -q)]; then
  docker images rm $DOCKER_IMAGE:$DOCKER_TAG
fi

docker build -t $DOCKER_IMAGE:$DOCKER_TAG .
docker run -idt --name sample-api $DOCKER_IMAGE:$DOCKER_TAG