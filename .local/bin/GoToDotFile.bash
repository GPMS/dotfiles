#!/bin/bash

declare -a options=(
    "Shell Config - $XDG_CONFIG_HOME/shell - profile"
    "X11 Config - $XDG_CONFIG_HOME/X11 - xprofile"
    "Neovim Config - $XDG_CONFIG_HOME/nvim - init.vim"
    "Scripts - $HOME/.local/bin - ."
    "Polybar Config - $XDG_CONFIG_HOME/polybar - config.ini"
    "i3 Config File - $XDG_CONFIG_HOME/i3 - config"
    "Alacritty Config File - $XDG_CONFIG_HOME/alacritty - alacritty.yml"
    "quit"
)

choice=$(printf '%s\n' "${options[@]}" | dmenu -i -l 20 -p 'Edit config:')

if [[ "$choice" == "quit" || "$choice" == "" ]]; then
    echo "Program terminated." && exit 1
elif [[ "choice" ]]; then
    dir=$(echo "${choice}" | cut -d'-' -f2)
    file=$(echo "${choice}" | cut -d'-' -f3)
    cd $dir
    alacritty -e sh -c "sleep 0.1 && nvim $file" &
    disown
else
    echo "Program terminated." && exit 1
fi
