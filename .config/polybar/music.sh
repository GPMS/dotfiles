#!/bin/bash

title=$(mpc current -f %title% | tr -d "\n")
albumartist=$(mpc current -f %albumartist% | tr -d "\n")
time=$(mpc | sed -n 2p | awk '{print $3}')
status=`mpc | sed -n 2p | awk '{print $1}'`


if [ -z "$(mpc current)" ]; then
    echo ""
else
    if [ "$status" == "[playing]" ]; then
        icon=""
    else
        icon=""
    fi

    echo -n "$icon $albumartist - $title [$time]"
fi

