#!/bin/bash

sudo sed -i "/GRUB_CMDLINE_LINUX=.*/c GRUB_CMDLINE_LINUX=\"net.ifnames=0 biosdevname=0\"" /etc/default/grub

sudo grub-mkconfig -o /boot/grub/grub.cfg

#sudo reboot
