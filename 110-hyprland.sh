#!/bin/bash

###################################################
#												  #
# ==> Autor: Elder M. Fouraux                     #
#                                                 #
# ==> Descrição: video and files basic apps       #
#				(AGO/2023)						  #
###################################################

{
echo -e "Let's install the Hyprland Wayland. We can proceed? (y/N)?"
read answer
    if [[ $answer = [sSyY] ]]; then
        echo -e "\nInstalling...\n"

        yay -S swaybg swayidle swaylock wlroots wl-clipboard waybar-hyprland-git wofi foot mako grim slurp wlogout light 
        yay -S yad obs-studio imagemagick nwg-look xorg-xwayland xdg-desktop-portal-wlr playerctl pastel python-pywal pulsemixer		
        yay -S hyprland
        yay -S wlrobs-hg  # To Obs-studio works
        yay swww
        sleep 3
        mkdir -p ~/.config/hypr
        cp -r hyprland/* $HOME/.config/hypr/
    else
        sair
    fi
}

sair() {
    echo -e "\nDo it! Log out NOW...\n"
    exit 0
}
