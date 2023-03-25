#!/bin/bash

D=$HOME/Downloads

postman_archive=$(curl -s -f -L "https://www.postman.com/downloads" | grep -Eo "https?://\S+?\"" | grep linux_64 | sed 's/"//')

wget $postman_archive  -O $D/postman.tar.gz

wget https://raw.githubusercontent.com/godishala/InstallationScripts/main/postman.desktop -O ~/.local/share/applications/postman.desktop

sudo tar -xzvf $D/postman.tar.gz -C /opt/

sudo chown -R $user:$user /opt/Postman




