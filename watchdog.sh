#!/bin/bash
CONTAINER_NAME="target-app"

if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
    echo "$(date): $CONTAINER_NAME is running smoothly."
else
    echo "$(date): $CONTAINER_NAME is DOWN! Reviving it now..."
    docker start $CONTAINER_NAME
fi
