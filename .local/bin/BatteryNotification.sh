#!/bin/sh

while :
do
    batteryDir="/sys/class/power_supply/BAT0"

    # Stop if there is no battery
    test -d $batteryDir || echo "No Battery" && break

    batteryLevel=$(cat "$batteryDir"/capacity)
    isCharging=$(grep -c "Charging" "$batteryDir"/status)

    if [ "$isCharging" -eq 1 ] && [ "$batteryLevel" -eq 100 ]; then
        dunstify -t 3000 "Charge full"
    elif [ "$isCharging" -eq 0 ] && [ "$batteryLevel" -le 15 ]; then
        dunstify -t 3000 "Battery low..."
    fi

    sleep 10
done
