#!/bin/bash

D=$HOME/Downloads
wget  "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64" -O $D/code.deb

sudo dpkg -i $D/code.deb

code --version
code --install-extension vscodevim.vim
code --install-extension ms-vscode.cpptools
code --install-extension ms-vscode.cpptools-extension-pack
code --install-extension ms-vscode.cpptools-themes
code --install-extension ms-vscode.cmake-tools
code --install-extension twxs.cmake
code --install-extension ms-python.python
code --install-extension ms-python.isort
code --install-extension ms-python.vscode-pylance

sudo apt install gcc-11 && sudo apt install gcc-10

sudo apt install mingw-w64

sudo apt install g++-11 && sudo apt install g++-10

sudo apt install gdb

sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-10 10
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-11 11
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-10 10
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-11 11

#sudo update-alternatives --config gcc
#sudo update-alternatives --config g++


sudo apt install clang

#clang --version | head -n 1 | awk {'print $4'} | cut -d . -f 1
