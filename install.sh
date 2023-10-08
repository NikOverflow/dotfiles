#!/bin/sh
scriptPath="$(dirname $0)"
cd "$scriptPath/"

mkdir -pm 700 $HOME/Pictures $HOME/.scripts $HOME/.config/hypr $HOME/.config/wofi $HOME/.config/kitty $HOME/.config/neofetch

cp -f Pictures/Wallpaper.png $HOME/Pictures/Wallpaper.png
chown $USER:$USER $HOME/Pictures/Wallpaper.png
chmod 600 $HOME/Pictures/Wallpaper.png

cp -f startHyprland.sh $HOME/startHyprland.sh
chown $USER:$USER $HOME/startHyprland.sh
chmod 700 $HOME/startHyprland.sh

cp -f .zshrc $HOME/.zshrc
chown $USER:$USER $HOME/.zshrc
chmod 600 $HOME/.zshrc

cp -f .zlogin $HOME/.zlogin
chown $USER:$USER $HOME/.zlogin
chmod 600 $HOME/.zlogin

cp -f .scripts/* $HOME/.scripts/
chown $USER:$USER $HOME/.scripts/*
chmod 700 $HOME/.scripts/*

cp -f .config/hypr/* $HOME/.config/hypr/
chown $USER:$USER $HOME/.config/hypr/*
chmod 600 $HOME/.config/hypr/*

cp -f .config/wofi/* $HOME/.config/wofi/
chown $USER:$USER $HOME/.config/wofi/*
chmod 600 $HOME/.config/wofi/*

cp -f .config/kitty/kitty.conf $HOME/.config/kitty/kitty.conf
chown $USER:$USER $HOME/.config/kitty/kitty.conf
chmod 600 $HOME/.config/kitty/kitty.conf

cp -f .config/neofetch/config.conf $HOME/.config/neofetch/config.conf
chown $USER:$USER $HOME/.config/neofetch/config.conf
chmod 600 $HOME/.config/neofetch/config.conf