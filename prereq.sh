#!/bin/bash
#Ubuntu 16 - server 
#echo "deb http://archive.ubuntu.com/ubuntu wily main universe" | sudo tee /etc/apt/sources.list.d/wily-copies.list
sudo add-apt-repository ppa:nilarimogard/webupd8
sudo add-apt-repository ppa:openjdk-r/ppa  
sudo apt update 
sudo apt install openjdk-7-jdk openjdk-7-jre
sudo apt install git-core python gnupg flex bison gperf libsdl1.2-dev libesd0-dev libwxgtk2.8-dev squashfs-tools build-essential zip curl libncurses5-dev zlib1g-dev  openjdk-7-jdk pngcrush schedtool libxml2 libxml2-utils xsltproc lzop libc6-dev schedtool g++-multilib lib32z1-dev lib32ncurses5-dev lib32readline* gcc-multilib liblz4-* android-tools-adb android-tools-fastboot ccache
echo "Copying android rules\n"
sudo curl --create-dirs -L -o /etc/udev/rules.d/51-android.rules -O -L https://raw.githubusercontent.com/snowdream/51-android/master/51-android.rules
echo "Setting permissions to rules file\n"
sudo chmod 644   /etc/udev/rules.d/51-android.rules
echo "changing owner for files"
sudo chown root. /etc/udev/rules.d/51-android.rules
echo "starting usb service"
sudo service udev restart
