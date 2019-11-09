#!/bin/bash

confirm() {
    echo -e "Yes\nNo" | rofi -dmenu -i -format d -selected-row 1 -p "${1:-Confirm: }"
}

reload="Reload i3"
restart="Restart i3"
quit="Quit i3"
suspend="Suspend"
reboot="Reboot"
shutdown="Shutdown"


content="$reload\n$restart\n$quit\n$suspend\n$reboot\n$shutdown"

selection=$(echo -e $content | rofi -dmenu -i -markup-rows -p "Action: ")
case $selection in
    $reload)
        i3-msg reload;;
    $restart)
        i3-msg restart;;
    $quit)
        i3-msg exit;;
    $suspend)
        systemctl suspend -i;;
    $reboot)
        systemctl reboot -i;;
    $shutdown)
        systemctl poweroff -i;;
esac
