#!/bin/bash

D=$HOME/Downloads

vivaldi_deb=$(curl -s -f -L https://vivaldi.com/download/ | grep -Eo "https?://\S+?\"" | grep amd64.deb | sed s'/"//')

wget  $vivaldi_deb -O $D/vivaldi.deb

sudo dpkg -i $D/vivaldi.deb
