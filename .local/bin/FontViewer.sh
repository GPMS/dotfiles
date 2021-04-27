#!/bin/sh

font=$(fc-list | cut -d : -f 1 | dmenu -l 5 -p "Font:")

if [ -n "$font" ]; then
    display "$font"
fi
