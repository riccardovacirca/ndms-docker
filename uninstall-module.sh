#!/bin/sh
npm unlink ndms-module
cd modules/ndms && npm unlink
rm -rf modules
