#!/bin/sh

WM=$XDG_CURRENT_DESKTOP

suspend="Suspend"
reboot="Reboot"
shutdown="Shutdown"

if [ "$WM" = "i3" ]; then
    reload="Reload WM"
    restart="Restart WM"
    quit="Quit WM"
    isKnownWM=true
else
    isKnownWM=false
fi

if [ $isKnownWM == true ]; then
    content="$reload\n$restart\n$quit\n$suspend\n$reboot\n$shutdown"
else
    content="$suspend\n$reboot\n$shutdown"
fi

Restart()
{
    i3-msg restart
    killall picom; picom &
    LaunchPolybar.sh
    i3-msg "[instance="dropdown"] move position center"
}

selection=$(echo -e "$content" | dmenu -i -c -l 6 -bw 5)
case $selection in
    "$reload")
        case $WM in
            i3)
                i3-msg reload;;
        esac;;
    "$restart")
        case $WM in
            i3)
                Restart;;
        esac;;
    "$quit")
        case $WM in
            i3)
                i3-msg exit;;
        esac;;
    "$suspend")
        systemctl suspend -i;;
    "$reboot")
        systemctl reboot -i;;
    "$shutdown")
        systemctl poweroff -i;;
esac

