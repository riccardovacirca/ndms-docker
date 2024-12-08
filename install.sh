#!/bin/sh
docker-compose -f docker-compose.dev.yml up --build
git clone https://github.com/riccardovacirca/ndms-module.git module/ndms
cd module/ndms && npm link
rm -rf module/.gitkeep
cd ../.. && npm link ndms-module
nodemon ndms.js
