#!/bin/bash

title=$(mpc current -f %title% | tr -d "\n")
albumartist=$(mpc current -f %albumartist% | tr -d "\n")
time=$(mpc | sed -n 2p | awk '{print $3}')

if [ -z "$(mpc current)" ]
then
    echo -n "mpd is offline"
else
    echo -n "$albumartist - $title [$time]"
fi

