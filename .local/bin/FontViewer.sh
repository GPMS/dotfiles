#!/bin/sh

font=$(fc-list | cut -d : -f 1 | dmenu -l 5 -p "Font:")

if [ ! -z $font ]; then
    display $font
fi
