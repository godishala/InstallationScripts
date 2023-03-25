#!/bin/bash

D=$HOME/Downloads

postman_archive=$(curl -s -f -L "https://www.postman.com/downloads" | grep -Eo "https?://\S+?\"" | grep linux_64 | sed 's/"//')

wget $postman_archive  -O $D/postman.tar.gz

sudo tar -xzvf $D/postman.tar.gz -C /opt/

sudo chown $user:$user /opt/Postman




