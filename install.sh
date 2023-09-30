#!/bin/sh
scriptPath="$(dirname $0)"
cd "$scriptPath/"

mkdir -pm 700 $HOME/Pictures $HOME/.scripts $HOME/.config/hypr $HOME/.config/wofi

cp -f Pictures/Wallpaper.png $HOME/Pictures/Wallpaper.png
chown $USER:$USER $HOME/Pictures/Wallpaper.png
chmod 600 $HOME/Pictures/Wallpaper.png

cp -f startHyprland.sh $HOME/startHyprland.sh
chown $USER:$USER $HOME/startHyprland.sh
chmod 700 $HOME/startHyprland.sh

cp -f .scripts/* $HOME/.scripts/
chown $USER:$USER $HOME/.scripts/*
chmod 700 $HOME/.scripts/*

cp -f .config/hypr/* $HOME/.config/hypr/
chown $USER:$USER $HOME/.config/hypr/*
chmod 600 $HOME/.config/hypr/*