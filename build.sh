#!/bin/bash

# dependencies for gitbook:
#   sudo apt-get install nodejs
#   sudo apt-get install npm
#   sudo npm -g install gitbook
# 

# dependencies for grunt:
#   sudo npm -g install grunt-cli
  npm install grunt --save-dev
  npm install grunt-gitbook --save-dev
  npm install grunt-gh-pages --save-dev
  npm install grunt-contrib-clean --save-dev

gitbook init
gitbook install
# gitbook build

grunt publish
