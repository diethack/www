#!/bin/bash

set +e
echo "Restarting."
docker stop diethack-www
docker rm diethack-www
set -e

mkdir -p /var/tmp/diethack-www
chown 1000:1000 /var/tmp/diethack-www

docker run --rm -t \
    -v /etc/localtime:/etc/localtime:ro \
    -v /etc/diethack-www:/etc/diethack-www:ro \
    -v /var/tmp/diethack-www:/var/tmp/diethack-www \
    --name diethack-www -h diethack-www \
    diethack/diethack-www:0 \
    sudo -iu user /diethack-www/run/run.sh
