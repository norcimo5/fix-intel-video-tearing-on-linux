#!/bin/bash
printf "\x1b[36;1m[ INSTALLING INTEL VIDEO PATCH ]\x1b[0m\n"
sudo apt-get -y -qq install mesa-utils
sudo mkdir -p /etc/X11/xorg.conf.d/
echo -e 'Section "Device"\n Identifier "Intel Graphics"\n Driver "Intel"\n Option "AccelMethod" "sna"\n Option "TearFree" "true"\nEndSection' | sudo tee /etc/X11/xorg.conf.d/20-intel.conf
printf "\x1b[32;1m[ INTEL VIDEO PATCH COMPLETE ]\x1b[0m\n"
printf "\x1b[32;1m[  PRESS ANY KEY TO REBOOT   ]\x1b[0m\n"
read -n 1 -s && sudo reboot
