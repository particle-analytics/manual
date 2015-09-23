#!/bin/bash

# dependencies for gitbook:
#   sudo apt-get install nodejs
#   sudo apt-get install npm
#   sudo npm -g install gitbook
# 

# dependencies for grunt:
#   sudo npm -g install grunt-cli

if [[ ! -d "node_modules" || ! -d "node_modules/grunt" ]]; then
  npm install grunt --save-dev
fi

if [ ! -d "node_modules/grunt-gitbook" ]; then
  npm install grunt-gitbook --save-dev
fi
if [ ! -d "node_modules/grunt-gh-pages" ]; then
  npm install grunt-gh-pages --save-dev
fi
if [ ! -d "node_modules/grunt-contrib-clean" ]; then
  npm install grunt-contrib-clean --save-dev
fi

gitbook init
gitbook install
gitbook build

# gitbook build -g user/repo
cd _book

rm -r theme
rm -r style

git init
git commit --allow-empty -m 'update book'
git checkout -b gh-pages
# touch .nojekyll
git add .
git commit -am "update book"
git push git@github.com:particle-analytics/manual gh-pages --force

# grunt publish
