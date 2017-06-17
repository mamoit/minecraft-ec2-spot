#!/bin/bash

set -e

. config.sh

eval $(docker-machine env ${INSTANCE_NAME})

MOUNTPOINT=$(docker volume inspect dockerminecraft_vol-minecraft | jq '.[0].Mountpoint' | sed "s/\"//g")
ARCHIVE=${BACKUP_PREFIX}$(date +%Y-%m-%d_%H-%M.tar.gz)

echo "> Stoping server"
docker-compose stop

# Compress
echo "> Backing up"
docker-machine ssh ${INSTANCE_NAME} sudo tar -czf /tmp/${ARCHIVE} -C ${MOUNTPOINT}/ .

# Download locally
docker-machine scp ${INSTANCE_NAME}:/tmp/${ARCHIVE} cache/

# Upload to S3
aws s3 cp cache/${ARCHIVE} ${BACKUP_PATH}

echo "> Destroying machine"
docker-machine rm -y ${INSTANCE_NAME}

echo "> Done"
