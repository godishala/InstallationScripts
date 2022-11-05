#!/bin/bash
echo "##############################################"
echo "Works with kernel 5.x not tested on kernel 6.x"
echo "##############################################"

D=$HOME/Downloads
Amod=$HOME/Downloads/anbox-modules

echo "Please provide sudo password as some of the commands need sudo privileges to continue..."

sudo apt update && sudo apt install anbox

cd $D

echo "anbox is installed"

echo "Downloading android image from abox website and moving it to /var/lib/anbox folder"

#wget https://build.anbox.io/android-images/2018/07/19/android_amd64.img -P $D

#sudo mv $D/android_amd64.img /var/lib/anbox/android.img

echo "Downloaded android image and cloning anbox-modules..."

sudo apt install git -y

git -C $D clone https://github.com/choff/anbox-modules.git

echo "anbox-modules cloned..."

sudo cp $Amod/anbox.conf /etc/modules-load.d/

sudo cp $Amod/99-anbox.rules /lib/udev/rules.d/

echo "Copied anbox.conf & 99-anbox.rules to respective folders"

sudo cp -rT $Amod/ashmem /usr/src/anbox-ashmem-1

sudo cp -rT $Amod/binder /usr/src/anbox-binder-1

echo "Copied ashmem and binder modules to /usr/src"

sudo apt install dkms

sudo dkms install anbox-ashmem/1

sudo dkms install anbox-binder/1

echo "Compiled ashmem and binder for kernel"

sudo modprobe ashmem_linux

sudo modprobe binder_linux

echo "loaded ashmem and binder modules in kernel"

echo "checking whether the modules were loaded in kernel"

lsmod | grep -e ashmem_linux -e binder_linux


echo "starting/restarting anbox container service..."

sudo systemctl start anbox-container-manager.service && sudo systemctl restart anbox-container-manager.service

echo "Enabling anbox container service..."

sudo systemctl enable anbox-container-manager.service

echo "starting anbox..."

anbox launch --package=org.anbox.appmgr --component=org.anbox.appmgr.AppViewActivity

echo "Installation done and the anbox is available for use..."

echo "Incase if you need a root shell of anbox  it can be accessed with 'sudo /usr/share/anbox/anbox-shell.sh"
