#!/bin/bash

# dependencies for gitbook:
#   sudo apt-get install nodejs
#   sudo apt-get install npm
#   sudo npm -g install gitbook
# 

# dependencies for grunt:
#   sudo npm -g install grunt-cli
#   sudo npm install grunt --save-dev
#   sudo npm install grunt-gitbook --save-dev
#   sudo npm install grunt-gh-pages --save-dev
#   sudo npm install grunt-contrib-clean --save-dev

gitbook init
gitbook install
gitbook build