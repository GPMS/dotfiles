#!/bin/sh

SCRIPT=$(cd ~/.local/bin && fd ".(ba)?sh$" | xargs printf "%s\n" $1 | dmenu -i -c -l 5 -p "Script:")

if [ -z "$SCRIPT" ]; then
    echo "No script!"
    exit
fi

$SCRIPT
