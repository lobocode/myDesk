#!/usr/bin/env bash

# What distribution
lsb_dist="$(. /etc/os-release && echo "$ID")"

echo -e "\n Install dependencies\n"

# Fedora
if [ $lsb_dist == "fedora" ]; then
    sudo dnf -y install rofi zsh htop lxappearance orage pcmanfm openbox leafpad terminator tint2 feh xlockmore obconf mpv xpdf shutter p7zip gimp inkscape lutris unar p7zip htop python2-tkinter python3-tkinter
fi

# CentOs
if [ $lsb_dist == "centos" ]; then
    sudo yum install "zsh feh obconf-qt mousepad htop orage pcmanfm-qt openbox terminator tint2 xlockmore obconf-qt mpv xpdf p7zip gimp inkscape"
    # Install rofi
    sudo yum install centos/rofi-0.15.12-1.el7.centos.x86_64.rpm
fi

# I need to find packages, versions or alternatives of these for centos.

if [ ! -z $"USER" ]
then
    echo -e "\n|----------------------------------------------------|\n"
    echo -e "\n Install ohMyZsh\n"
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


    echo -e "\n|----------------------------------------------------|\n"
    echo -e "\n Install myDesk config\n"
    \cp -a .config/* /home/$USER/.config/
    \cp -a .zshrc_config/* /home/$USER/

    if  [ -d "/home/$USER/.themes" ] 
    then
        echo -e "\n|----------------------------------------------------|\n"
        echo -e "\n Install myDesk themes config\n"
        mkdir /home/$USER/.themes
        \cp -a themes/* /home/$USER/.themes/
    fi

fi

# Download wallpaper pack
#wget -c url > path
