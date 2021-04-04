#!/bin/sh

OpenOnce()
{
    [ $(pgrep -c "$1") = 0 ] && "$1" &
}

while :
do
    # Only open when the PC has an internet connection
    if ping -q -c 1 -W 1 8.8.8.8; then
        kitty --title "newsboat" newsboat &
        OpenOnce qbittorrent
        [ $(pgrep -c chrome) = 0 ] && google-chrome-stable &
        break
    fi

    # No internet connection, sleep for a while...
    sleep 10
done
