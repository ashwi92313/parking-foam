#!/bin/bash -x

# modified from (http://wiki.ros.org/docker/Tutorials/GUI)
docker run -it \
    --name=openfoam \
    --user=$(id -u):$(id -g) \
    --env="DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --volume="$HOME/dev/ofoamlab:/home/openfoam/ofoamlab" \
    openfoam/openfoam6-paraview56