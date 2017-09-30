#!/bin/bash
NODE_NAME="node-memcached"
DOCKER_NAME="sbmvt-memcached"
MEMORY_LIMIT="512"
eval $(docker-machine env $NODE_NAME)
last_id=$(docker ps -l -q)
docker rm -f $last_id
docker run -p11211:11211 -d memcached:1.5-alpine memcached -m $MEMORY_LIMIT 
