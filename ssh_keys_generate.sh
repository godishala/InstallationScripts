#!/bin/bash
ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa <<<y >/dev/null 2>&1
#ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa <<< $'\ny' >/dev/null 2>&1 --> for bash
