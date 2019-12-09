#!/bin/sh
XSOCK=/tmp/.X11-unix
XAUTH=/tmp/.docker.xauth

touch $XAUTH

xauth nlist :0 | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -

