#!/bin/sh

confirm() {
    echo -e "Yes\nNo" | rofi -dmenu -i -format d -selected-row 1 -p "${1:-Confirm: }"
}

WM=$XDG_CURRENT_DESKTOP
isKnownWM=true

suspend="Suspend"
reboot="Reboot"
shutdown="Shutdown"

if [ "$WM" = "i3" ]; then
    reload="Reload WM"
    restart="Restart WM"
    quit="Quit WM"
else
    isKnownWM=false
fi

if [ $isKnownWM ]; then
    content="$reload\n$restart\n$quit\n$suspend\n$reboot\n$shutdown"
else
    content="$suspend\n$reboot\n$shutdown"
fi

Restart()
{
    i3-msg restart
    killall picom; picom &
    disown
    ~/.config/polybar/launch.sh
    disown
    i3-msg "[instance="dropdown"] move position center"
}

selection=$(echo "$content" | dmenu -i -c -l 6 -bw 5)
case $selection in
    $reload)
        case $WM in
            i3)
                i3-msg reload;;
        esac;;
    $restart)
        case $WM in
            i3)
                Restart;;
        esac;;
    $quit)
        case $WM in
            i3)
                i3-msg exit;;
        esac;;
    $suspend)
        systemctl suspend -i;;
    $reboot)
        systemctl reboot -i;;
    $shutdown)
        systemctl poweroff -i;;
esac

