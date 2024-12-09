#!/bin/sh
docker stop ndms && docker rm ndms && docker rmi ndms-image
rm -rf ../ndms-docker