#!/bin/sh
docker build -t ndms-image .
docker run --name ndms -d -p 2310:2310 -v $(pwd)/modules:/service/modules ndms-image
