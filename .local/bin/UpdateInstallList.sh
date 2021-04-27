#!/bin/sh

pacman -Qqen >> ~/Documents/installedPacman-new.txt

if [ -n "$(diff ~/Documents/installedPacman.txt ~/Documents/installedPacman-new.txt)" ]; then
    nvim -d ~/Documents/installedPacman.txt ~/Documents/installedPacman-new.txt
fi

pacman -Qqem > ~/Documents/installedAUR-new.txt
if [ -n "$(diff ~/Documents/installedAUR.txt ~/Documents/installedAUR-new.txt)" ]; then
    nvim -d ~/Documents/installedAUR.txt ~/Documents/installedAUR-new.txt
fi

mv -f ~/Documents/installedPacman-new.txt ~/Documents/installedPacman.txt
mv -f ~/Documents/installedAUR-new.txt ~/Documents/installedAUR.txt
