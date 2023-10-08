#!/bin/sh

sudo reflector --verbose --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist
sudo pacman -Syy