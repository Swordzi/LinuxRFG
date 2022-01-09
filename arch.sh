#!/bin/sh

    read -p "Do you have an NVIDIA or AMD Graphics card: " na
    case $na in
        [Nvidia]* ) sudo pacman -S nvidia nvidia-utils nvidia-settings; break;;
        [Amd]* ) echo "AMD support is coming later";  break;;
        * ) echo "You didnt select a gpu manufacturer, skipping... "; break;;
    esac
    
    read -p "Would you like to install steam? [Y]es [N]o: " yn
    case $yn in
        [Yy]* ) sudo pacman -S steam; break;;
        [Nn]* ) break;;
    esac

    read -p "Would you like to install OBS? [Y]es [N]o: " yesno
    case $yesno in
        [Yy]* ) sudo pacman -S git; git clone https://aur.archlinux.org/yay-bin.git; cd yay-bin; makepkg -si; yay -S obs-studio; break;;
        [Nn]* ) echo "Thanks for using the script" exit;;
    esac