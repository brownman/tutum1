#!/bin/sh

cd /tmp/project

npm install -g
npm link
./node_modules/bower/bin/bower install -g -f --allow-root  --config.interactive=false 
