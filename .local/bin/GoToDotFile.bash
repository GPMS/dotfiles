#!/bin/bash

declare -a options=(
    "Shell Config - $XDG_CONFIG_HOME/shell - profile"
    "X11 Config - $XDG_CONFIG_HOME/X11 - xprofile"
    "Neovim Config - $XDG_CONFIG_HOME/nvim - init.lua"
    "Scripts - $HOME/.local/bin - ."
    "Polybar Config - $XDG_CONFIG_HOME/polybar - config.ini"
    "i3 Config File - $XDG_CONFIG_HOME/i3 - config"
    "Alacritty Config File - $XDG_CONFIG_HOME/alacritty - alacritty.yml"
    "Kitty Config File - $XDG_CONFIG_HOME/kitty - kitty.conf"
    "SXKHD Mappings - $XDG_CONFIG_HOME/sxhkd - sxhkdrc"
    "Newsboat - $XDG_CONFIG_HOME/newsboat - config"
    "quit"
)

choice=$(printf '%s\n' "${options[@]}" | dmenu -i -c -l 5 -p 'Edit config:')

if [[ -z "$choice" ]]; then
    echo "Program terminated."
    exit 1
fi

dir=$(echo "${choice}" | cut -d'-' -f2)
file=$(echo "${choice}" | cut -d'-' -f3)
cd $dir || exit
kitty nvim $file &
