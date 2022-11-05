#!/bin/bash

cd ~/Downloads

Latestgo=$(curl -Ls https://go.dev/dl/ | grep linux-amd64 | head -n 1 | awk -F '"' '{print $4}')

wget https://go.dev$Latestgo

#rm -rf /usr/local/go && tar -C /usr/local -xzf go1.18.2.linux-amd64.tar.gz # if the go language is already installed else,

sudo tar -C /usr/local -xzf go*.tar.gz

#export PATH=$PATH:/usr/local/go/bin >> ~/.zshrc

go version

rm  go*.tar.gz
