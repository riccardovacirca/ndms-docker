#!/bin/sh
docker build -t ndms-image .
docker run --name ndms -p 2310:2310 ndms-image