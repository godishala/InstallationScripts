#!/bin/bash


docker pull rustscan/rustscan:2.0.1

docker run -it --rm --name rustscan rustscan/rustscan:2.0.1 -V

echo "alias rustscan='docker run -it --rm --name rustscan rustscan/rustscan:2.0.1'" >> $HOME/.zshrc

rustscan -V
