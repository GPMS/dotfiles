#!/bin/sh

selected=$(mpc lsplaylist | sort | dmenu -l 6)
if [ -n "$selected" ]; then
    mpc --quiet clear
    mpc --quiet load "$selected" >> /dev/null
    mpc --quiet shuffle
    mpc --quiet play
fi
