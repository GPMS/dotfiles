#!/bin/sh

printf "New browser: "
read browser

xdg-mime default $browser x-scheme-handler/http
xdg-mime default $browser x-scheme-handler/https
