#!/bin/sh
mkdir -p modules
git clone https://github.com/riccardovacirca/ndms-module.git modules/ndms
cd modules/ndms && npm install && npm link
cd /service && npm link ndms-module
