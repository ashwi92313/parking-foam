#!/bin/bash

containerId=openfoam

# start docker daemon if not running
pgrep -f docker > /dev/null || sudo systemctl start docker

xhost +local:`docker inspect --format='{{ .Config.Hostname }}' $containerId`
docker start -i $containerId