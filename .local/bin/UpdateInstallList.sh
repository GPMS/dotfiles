#!/bin/sh

pacmanPath="$HOME/Documents/packages/installedPacman.txt"
pacmanNewPath="$HOME/Documents/packages/installedPacman-new.txt"

aurPath="$HOME/Documents/packages/installedAUR.txt"
aurNewPath="$HOME/Documents/packages/installedAUR-new.txt"

pacman -Qqen >> "$pacmanNewPath"

if [ -n "$(diff "$pacmanPath" "$pacmanNewPath")" ]; then
    nvim -d "$pacmanPath" "$pacmanNewPath"
fi

pacman -Qqem > "$aurNewPath"
if [ -n "$(diff "$aurPath" "$aurNewPath")" ]; then
    nvim -d "$aurPath" "$aurNewPath"
fi

mv -f "$pacmanNewPath" "$pacmanPath"
mv -f "$aurNewPath" "$aurPath"
