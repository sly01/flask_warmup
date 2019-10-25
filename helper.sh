#!/usr/bin/bash
IMAGE_VER="flask:v1"
CONTAINER_NAME="flask-dev"

case $1 in
	run)
	docker container run -v $(pwd)/src:/src -p 5000:5000 --name $CONTAINER_NAME -d --rm $IMAGE_VER
	;;
	restart)
	docker container restart $CONTAINER_NAME
	;;
	stop)
	docker container stop $CONTAINER_NAME
 	;;
	*)
	echo "Invalid Option"
	;;
esac
