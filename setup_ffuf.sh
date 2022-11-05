#!/bin/bash

cd ~/Downloads

Versv=$(curl -Ls -o /dev/null -w %{url_effective}/ https://github.com/ffuf/ffuf/releases/latest | awk -F "/" '{print $8}')

Vers=$(curl -Ls -o /dev/null -w %{url_effective}/ https://github.com/ffuf/ffuf/releases/latest | awk -F "/" '{print $8}' | sed 's/^v//')_linux_amd64.tar.gz


wget https://github.com/ffuf/ffuf/releases/download/$Versv/ffuf_$Vers


tar -C ~/bin -xzf ffuf*.tar.gz

rm ~/bin/LICENSE
rm ~/bin/README.md
rm ~/bin/CHANGELOG.md


ffuf -V

rm ffuf*.tar.gz
