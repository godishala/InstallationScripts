#!/bin/bash

sudo apt update && sudo apt upgrade -y

D=$HOME/Downloads

git -C $D clone https://github.com/gohugoio/hugo.git

cd $D/hugo

go install --tags extended

sudo npm i -g postcss postcss-cli autoprefixer
