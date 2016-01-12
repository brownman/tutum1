#!/bin/sh

cd /tmp/project
npm link bower
./node_modules/bower/bin/bower install -g -f --allow-root  --config.interactive=false 
npm install -g

