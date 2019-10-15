#!/usr/bin/env bash

# What distribution
lsb_dist="$(. /etc/os-release && echo "$ID")"

echo -e "\n Install dependencies\n"

# Fedora
if [ $lsb_dist == "fedora" ]; then
    sudo dnf install "zsh rofi htop lxappearance orage pcmanfm openbox leafpad terminator tint2 feh xlockmore clipit obconf xpad mpv xpdf shutter p7zip gimp inkscape lutris unar p7zip htop"
fi

# CentOs
if [ $lsb_dist == "centos" ]; then
    sudo yum install "zsh feh obconf-qt mousepad htop orage pcmanfm-qt openbox terminator tint2 xlockmore obconf-qt mpv xpdf p7zip gimp inkscape"
    # Install rofi
    sudo yum install centos/rofi-0.15.12-1.el7.centos.x86_64.rpm
fi

# I need to find packages, versions or alternatives of these for centos.

#if [ ! -z $"USER" ] ; then
#    echo -e "\n|----------------------------------------------------|\n"
#    echo -e "\n Install ohMyZsh\n"
#    sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
#    echo -e "\n|----------------------------------------------------|\n"
#    echo -e "\n Install install powerline fonts\n"
#    git clone https://github.com/powerline/fonts
#    cd fonts
#    ./install.sh
#    echo -e "\n|----------------------------------------------------|\n"
#    echo -e "\n Install myDesk config\n"
#    \cp -a .config/* /home/$USER/.config/
#    echo -e "\n|----------------------------------------------------|\n"
#    echo -e "\n Install myDesk themes config\n"
#    \cp -a themes/* /home/$USER/.themes/

#fi

# Download wallpapers
#wget -c url > path
