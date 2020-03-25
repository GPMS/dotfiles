#!/bin/bash

while :
do
    # Stop if there is no battery
    if [ -z $(acpi -b) ]
    then
        break
    fi

    batteryLevel=$(acpi -b |cut -d ' ' -f4| grep -o '[0-9]*')
    isCharging=$(acpi -b | grep -c "Charging")

    if [[ $isCharging -eq 1 && $batteryLevel -eq 100 ]]
    then
        dunstify -t 3000 "Charge full"
    elif [[ $isCharging -eq 0 && $batteryLevel -le 15 ]]
    then
        dunstify -t 3000 "Battery low..."
    fi

    sleep 10
done
