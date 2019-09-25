#!/usr/bin/env bash

echo -e "\n Install dependencies\n"
sudo $1 -y install "pcmanfm openbox synapse leafpad terminator"

if [ ! -z $"USER" ] ; then
    echo -e "\n|----------------------------------------------------|\n"
    echo -e "\n Install myDesk openbox config\n"
    cp -R openbox/ /home/$USER/.config/
    echo -e "\n|----------------------------------------------------|\n"
    echo -e "\n Install myDesk themes config\n"
    cp -R themes/ /home/$USER/.themes/
fi
