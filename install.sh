#!/bin/sh
docker build -t my-node-app .
docker run -p 2310:2310 my-node-app