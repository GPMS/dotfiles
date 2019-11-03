#!/bin/bash

while :
do
    batteryLevel=$(acpi -b |cut -d ' ' -f2| grep -o '[0-9]*')
    isCharging=$(acpi -b | grep -c "Charging")

    if [[ $isCharging -eq 1 && $batteryLevel -eq 100 ]]
    then
        dunstify "Charge full"
    fi

    if [[ $isCharging -eq 0 && $batteryLevel -lt 30 ]]
    then
        dunstify "Battery low..."
    fi
    sleep 10
done
