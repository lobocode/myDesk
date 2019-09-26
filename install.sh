#!/usr/bin/env bash

echo -e "\n Install dependencies\n"

if [ -f /etc/redhat-release ]; then
    sudo yum install "orage pcmanfm-qt openbox synapse leafpad terminator tint2 nitrogen xlockmore clipit obconf-qt"
fi

if [ ! -z $"USER" ] ; then
    echo -e "\n|----------------------------------------------------|\n"
    echo -e "\n Install myDesk openbox config\n"
    cp -R openbox/ /home/$USER/.config/
    echo -e "\n|----------------------------------------------------|\n"
    echo -e "\n Install myDesk themes config\n"
    cp -R themes/ /home/$USER/.themes/
fi

# Download wallpapers
#wget -c url > path
