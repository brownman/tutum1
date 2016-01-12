#!/usr/bin/env bash

cd /tmp/project
npm install -g
npm link
node node_modules/bower/bin/bower install -g
