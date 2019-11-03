#!/bin/bash

while :
do
    # Only open when the PC has an internet connection
    if ping -q -c 1 -W 1 www.google.com
    then
        i3-msg 'workspace 9; exec thunderbird; workspace 1'
        break
    fi

    # No internet connection, sleep for a while...
    sleep 10
done
