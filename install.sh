#!/usr/bin/env bash

lsb_dist="$(. /etc/os-release && echo "$ID")"

echo -e "\n Install dependencies\n"

# Fedora
if [ $lsb_dist == "fedora" ]; then
    sudo yum install "zsh rofi lxappearance orage pcmanfm openbox leafpad terminator tint2 nitrogen xlockmore clipit obconf"
fi

# CentOs
if [ $lsb_dist == "centos" ]; then
    sudo yum install "zsh orage pcmanfm-qt openbox terminator tint2 xlockmore obconf-qt"
    # Install rofi
    sudo yum install centos/rofi-0.15.12-1.el7.centos.x86_64.rpm
fi

#leafpad
#nitrogen
#lxappearance
#clipit

if [ ! -z $"USER" ] ; then
    echo -e "\n|----------------------------------------------------|\n"
    echo -e "\n Install ohMyZsh\n"
    sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
    echo -e "\n|----------------------------------------------------|\n"
    echo -e "\n Install myDesk openbox config\n"
    cp -R openbox/ /home/$USER/.config/
    echo -e "\n|----------------------------------------------------|\n"
    echo -e "\n Install myDesk themes config\n"
    cp -R themes/ /home/$USER/.themes/

fi

# Download wallpapers
#wget -c url > path
