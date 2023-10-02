#!/bin/sh

sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak
sudo reflector --verbose --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist
sudo pacman -Syy