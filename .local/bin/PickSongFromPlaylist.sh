#!/bin/sh

format="%albumartist% %album% \"%title%\""

song=$(mpc -f "$format" playlist | sort | dmenu -i -c -l 10 -h 10 -p "Song: ")
test -z "$song" && exit

index=$(mpc -f "$format" playlist | grep -n -x "$song" | cut -d : -f 1)

mpc --quiet play "$index"
